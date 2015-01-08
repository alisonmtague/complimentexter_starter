class NotificationsController < ApplicationController


  def create
    #add the code that will create a new notification and text it to the provided number 
    @notification = Notification.new
    @notification.text
    render :index
  end

  def index
  	@notification = Notification.new
  end

  private
  def notification_params
    #what are the params needed to make a new notification? (refer to your model)
  end
end