class JoinEventsController < ApplicationController
 
  def create
  	@event = Event.find(params[:id])
  	@user = current_user
  	@event.users << user
  	@user.events << @event
  	@event.workers -= 1
  	@event.save
  	@user.save
    redirect_to @user
  end
end