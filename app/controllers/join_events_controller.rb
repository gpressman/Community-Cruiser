class JoinEventsController < ApplicationController
 
  def create
  	@event = Event.find(params[:event_id])
  	@user = current_user
  	@event.users << user
  	@user.events << @event
  	@event.save
  	@user.save
    render @event
  end

end