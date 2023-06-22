class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render json: @listings
  end

  def show
    @listing = Listing.find(params[:id])
    render json: @listing
  end

  def create
    @listing = Listing.new(num_room: params[:num_room])
    render json: @listing
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(num_room: params[:num_room])
    render json: @listing
  end

  def destroy
    @listings = Listing.all
    @listing = Listing.find(params[:id])
    @listing.destroy
    render json: @listings
  end

  # private

  # def listing_params
  #   params.require(:listing).permit(:num_rooms)
  # end
end
