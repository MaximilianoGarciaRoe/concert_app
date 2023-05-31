class ApplicationController < ActionController::Base

  def index
    if user_signed_in? && current_user.admin?
      @events = Event.preload(:venue, :category).all
    else
      @events = Event.preload(:venue, :category).last(3)
    end
  end
end
