class JoinEventsController < ApplicationController
 
  def create
  	current_user.join
  end
end