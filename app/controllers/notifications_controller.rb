class NotificationsController < ApplicationController
  def index
    @notification = Notification.all
    @notification.delete_all
  end
end
