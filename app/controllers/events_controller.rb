class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @venue = @event.venue
  end

  def new
    @event = Event.new
    @venue = Venue.find(params[:venue_id])
    @event.venue = @venue
    @categories = Category.all
  end

  def create
    vanue = Venue.find(params[:venue_id])
    event = Event.new(event_params)
    event.venue = vanue
    if event.save
      flash[:success] = 'Event was successfully created.'
      redirect_to venue_event_path(vanue, event)
    else
      flash[:error] = 'Event was not created.'
      redirect_to new_venue_event_path
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :category_id, :venue_id)
  end
end
