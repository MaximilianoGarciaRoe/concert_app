class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    venue = Venue.new(venue_params)
    if venue.save
      flash[:success] = 'Venue was successfully created.'
      redirect_to venue_path(venue)
    else
      flash[:error] = 'Venue was not created.'
      redirect_to new_venue_path
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :capacity)
  end
end
