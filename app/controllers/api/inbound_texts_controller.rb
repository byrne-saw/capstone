class Api::InboundTextsController < ApplicationController

  def bp_create
    message_sid = params[:MessageSid]
    from_phone = params[:From]
    to_phone = params[:To]
    message_in = params[:Body]
    user = User.where(twilio_number: from_phone).order(id: :asc).limit(1).first
    message_clean = []
    message_arr = message_in.split(/\s|\//)
    message_arr.each do |str|
      is_numeric(str) && message_clean << str
    end

    blood_pressure_log = BloodPressureLog.new(
                                              user_id: user.id,
                                              log_time: Time.now - 6.hours, 
                                              systolic: message_clean[0],
                                              diastolic: message_clean[1]
                                              )
    if blood_pressure_log.save
      text_body = "Hi #{user.first_name} you have successfully added a blood pressure reading of #{blood_pressure_log.systolic} / #{blood_pressure_log.diastolic} on #{blood_pressure_log.log_time.in_time_zone("Central Time (US & Canada)").strftime('%a, %d %b %Y %H:%M')}"
    else
      text_body = "Hi, that didn't work. Please try submitting again."
    end
    TwilioText.new(text_body, user.twilio_number).text
  end

  def is_numeric(o)
    true if Integer(o) rescue false
  end

end
