class ChatsController < ApplicationController
  def create
  	logger.info "--------------------------------------------------------"
  	WebsocketRails["CHAT"].trigger :new_message, params[:msg_body]
  	render :nothing => true
  end
end
