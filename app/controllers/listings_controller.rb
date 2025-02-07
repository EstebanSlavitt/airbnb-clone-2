class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render json: @listings
  end

  def show
    @listing = Listing.find_by(id: params[:id])
    if @listing
      render :show
    else
      render json: { error: "Listing not found" }, status: :not_found
    end
  end
end
