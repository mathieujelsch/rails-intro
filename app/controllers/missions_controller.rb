class MissionsController < ApplicationController
  def index
    @missions = Mission.all
    render json: @missions
  end

  def show
    @mission = Mission.find(params[:id])
    render json: @mission
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @mission = Mission.new(
    mission_type: params[:mission_type],
    date: params[:date],
    price: params[:price],
    listing_id: params[:listing_id]
    )
    render json: @mission
  end

  def update
  end

  def destroy
  end
end
