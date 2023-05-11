class ApplicationController < ActionController::Base
  def index
    @events = Event.preload(:venue, :category).last(3)
  end
end
