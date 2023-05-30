class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
    respond_to do |format|
      format.html { render :show, layout: !request.xhr? }
      format.json { render json: @venue }
    end
  end

  def mejor_lugar
    @venue = Venue.first
    respond_to do |format|
      format.html { render :mejor_lugar, layout: !request.xhr? }
    end
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      flash[:success] = 'Venue was successfully created.'
      redirect_to venue_path(@venue)
    else
      flash[:error] = 'Venue was not created.'
      render :new, status: :unprocessable_entity
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :capacity)
  end
end
