class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token


  def index
    @events = Event.preload(:venue, :category).last(3)
  end
end
