User.create!([
  # primary patient id = 1
  {first_name: "Andrew", last_name: "Byrnes", phone_number: "773-885-3893", email: "byrnesaw@gmail.com", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  # doctors id 2 - 7
  {first_name: "Beverly", last_name: "Crusher", phone_number: "773-885-3893", email: "bev@enterprise.com", doctor: true, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Michaela", last_name: "Quinn", phone_number: "773-885-3893", email: "dr.quinn@medicine-woman.com", doctor: true, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Gregory", last_name: "House", phone_number: "773-885-3893", email: "dr.house@house.md", doctor: true, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Doogie", last_name: "Howser", phone_number: "773-885-3893", email: "teach.me@doogie.com", doctor: true, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Livingstone", last_name: "I'Presume", phone_number: "773-885-3893", email: "doclivin@nile.com", doctor: true, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Richard", last_name: "Kimble", phone_number: "773-885-3893", email: "gotta@keep-runnin.com", doctor: true, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  # admins id 8 - 9
  {first_name: "Zero", last_name: "Cool", phone_number: "773-885-3893", email: "zero@cool.com", doctor: false, admin: true, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "David", last_name: "Lightman ", phone_number: "773-885-3893", email: "david@wopr.gov", doctor: false, admin: true, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  # patients id 10 - 27
  {first_name: "Rosina", last_name: "Deckow", phone_number: "773-885-3893", email: "Rosina.Deckow@strosin.com", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Gearldine", last_name: "Vandervort", phone_number: "773-885-3893", email: "Gearldine.Vandervort@schinnergleichner.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Tiara", last_name: "Tremblay", phone_number: "773-885-3893", email: "Tiara.Tremblay@will.com", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Lala", last_name: "Leffler", phone_number: "773-885-3893", email: "Lala.Leffler@kohler.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Henriette", last_name: "Metz", phone_number: "773-885-3893", email: "Henriette.Metz@grady.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Estell", last_name: "Wiegand", phone_number: "773-885-3893", email: "Estell.Wiegand@wisoky.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Kacey", last_name: "Waelchi", phone_number: "773-885-3893", email: "Kacey.Waelchi@rautorphy.co.uk", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Zita", last_name: "Dickinson", phone_number: "773-885-3893", email: "Zita.Dickinson@smithfisher.co.uk", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Jennette", last_name: "Langworth", phone_number: "773-885-3893", email: "Jennette.Langworth@swaniawski.com", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Savannah", last_name: "Schaden", phone_number: "773-885-3893", email: "Savannah.Schaden@haag.us", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Verline", last_name: "Steuber", phone_number: "773-885-3893", email: "Verline.Steuber@botsford.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Sandy", last_name: "Treutel", phone_number: "773-885-3893", email: "Sandy.Treutel@osinskigibson.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Cesar", last_name: "Friesen", phone_number: "773-885-3893", email: "Cesar.Friesen@mertzbauch.co.uk", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Bobby", last_name: "Becker", phone_number: "773-885-3893", email: "Bobby.Becker@mcdermott.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Abdul", last_name: "Schaefer", phone_number: "773-885-3893", email: "Abdul.Schaefer@stoltenbergstiedemann.us", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Alisa", last_name: "Casper", phone_number: "773-885-3893", email: "Alisa.Casper@wisoky.info", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Taylor", last_name: "Corkery", phone_number: "773-885-3893", email: "Taylor.Corkery@hirthe.biz", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Dalene", last_name: "Davis", phone_number: "773-885-3893", email: "Dalene.Davis@zemlak.us", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"}
])

DoctorPatient.create!([
  {doctor_id: 2, patient_id: 1},
  {doctor_id: 2, patient_id: 10},
  {doctor_id: 2, patient_id: 11},
  {doctor_id: 2, patient_id: 12},

  {doctor_id: 3, patient_id: 13},
  {doctor_id: 3, patient_id: 14},
  {doctor_id: 3, patient_id: 15},

  {doctor_id: 4, patient_id: 16},
  {doctor_id: 4, patient_id: 17},
  {doctor_id: 4, patient_id: 18},

  {doctor_id: 5, patient_id: 19},
  {doctor_id: 5, patient_id: 20},
  {doctor_id: 5, patient_id: 21},

  {doctor_id: 6, patient_id: 22},
  {doctor_id: 6, patient_id: 23},
  {doctor_id: 6, patient_id: 24},

  {doctor_id: 7, patient_id: 25},
  {doctor_id: 7, patient_id: 26},
  {doctor_id: 7, patient_id: 27}
])




BloodPressureLog.create!([
  {user_id: 1, log_time: "2018-10-01 06:44:00", systolic: 124, diastolic: 80},
  {user_id: 1, log_time: "2018-10-02 07:44:00", systolic: 124, diastolic: 85},
  {user_id: 1, log_time: "2018-10-03 08:44:00", systolic: 138, diastolic: 77},
  {user_id: 1, log_time: "2018-10-04 09:44:00", systolic: 128, diastolic: 84},
  {user_id: 1, log_time: "2018-10-05 10:44:00", systolic: 133, diastolic: 74},
  {user_id: 1, log_time: "2018-10-06 09:44:00", systolic: 122, diastolic: 89},
  {user_id: 1, log_time: "2018-10-07 08:44:00", systolic: 141, diastolic: 71},
  {user_id: 1, log_time: "2018-10-08 07:44:00", systolic: 128, diastolic: 76},
  {user_id: 1, log_time: "2018-10-09 06:44:00", systolic: 129, diastolic: 72},
  {user_id: 1, log_time: "2018-10-10 05:44:00", systolic: 119, diastolic: 81},
  {user_id: 1, log_time: "2018-10-11 08:44:00", systolic: 140, diastolic: 79},
  {user_id: 1, log_time: "2018-10-12 07:44:00", systolic: 130, diastolic: 76},
  {user_id: 1, log_time: "2018-10-13 09:44:00", systolic: 142, diastolic: 89},
  {user_id: 1, log_time: "2018-10-14 10:44:00", systolic: 137, diastolic: 81},
  {user_id: 1, log_time: "2018-10-15 06:44:00", systolic: 133, diastolic: 87},
  {user_id: 1, log_time: "2018-10-16 06:44:00", systolic: 142, diastolic: 85},
  {user_id: 1, log_time: "2018-10-17 07:44:00", systolic: 130, diastolic: 83},
  {user_id: 1, log_time: "2018-10-18 07:44:00", systolic: 136, diastolic: 81},
  {user_id: 1, log_time: "2018-10-19 07:44:00", systolic: 126, diastolic: 89},
  {user_id: 1, log_time: "2018-10-20 07:44:00", systolic: 121, diastolic: 84},
  {user_id: 1, log_time: "2018-10-21 07:44:00", systolic: 128, diastolic: 74},
  {user_id: 1, log_time: "2018-10-22 07:44:00", systolic: 142, diastolic: 76},
  {user_id: 1, log_time: "2018-10-23 07:44:00", systolic: 141, diastolic: 71},
  {user_id: 1, log_time: "2018-10-24 07:44:00", systolic: 120, diastolic: 73},
  {user_id: 1, log_time: "2018-10-25 06:44:00", systolic: 137, diastolic: 78},
  {user_id: 1, log_time: "2018-10-26 06:44:00", systolic: 145, diastolic: 88},
  {user_id: 1, log_time: "2018-10-27 06:44:00", systolic: 121, diastolic: 87},
  {user_id: 1, log_time: "2018-10-28 06:44:00", systolic: 145, diastolic: 86},
  {user_id: 1, log_time: "2018-10-29 06:44:00", systolic: 135, diastolic: 81},
  {user_id: 1, log_time: "2018-10-30 08:44:00", systolic: 140, diastolic: 89},
  {user_id: 1, log_time: "2018-10-31 08:44:00", systolic: 145, diastolic: 84},
  {user_id: 1, log_time: "2018-11-01 08:44:00", systolic: 118, diastolic: 85},
  {user_id: 1, log_time: "2018-11-02 08:44:00", systolic: 118, diastolic: 81},
  {user_id: 1, log_time: "2018-11-03 08:44:00", systolic: 128, diastolic: 79},
  {user_id: 1, log_time: "2018-11-04 09:44:00", systolic: 138, diastolic: 83},
  {user_id: 1, log_time: "2018-11-05 09:44:00", systolic: 141, diastolic: 82},
  {user_id: 1, log_time: "2018-11-06 09:44:00", systolic: 133, diastolic: 87},
  {user_id: 1, log_time: "2018-11-07 08:44:00", systolic: 123, diastolic: 89},
  {user_id: 1, log_time: "2018-11-08 06:44:00", systolic: 119, diastolic: 84},
  {user_id: 1, log_time: "2018-11-09 07:44:00", systolic: 127, diastolic: 87},
  {user_id: 1, log_time: "2018-11-10 09:44:00", systolic: 119, diastolic: 70},
  {user_id: 1, log_time: "2018-11-11 06:44:00", systolic: 144, diastolic: 72},
  {user_id: 1, log_time: "2018-11-12 05:44:00", systolic: 137, diastolic: 84},  
])



Notification.create!([
  {user_id: 1, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 10, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 11, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 12, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 13, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 14, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 15, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 16, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 17, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 18, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 19, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 20, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 21, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 22, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 23, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 24, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 25, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 26, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false},
  {user_id: 27, notify_type: "Blood Pressure", interval: 24, triggered: true, banner_alerted: false, sms_text: false, text_sent: false, text_at: false}
])







