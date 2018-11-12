class Api::InboundTextsController < ApplicationController

  def bp_create
    message_sid = params[:MessageSid]
    from_phone = params[:From]
    to_phone = params[:To]
    message = params[:Body]
    
    
  end

end
