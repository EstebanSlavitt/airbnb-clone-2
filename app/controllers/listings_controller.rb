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

  def update
    @listing = Listing.find_by(id: params[:id])
    if @listing
      @listing.update(
        title: params[:title] || @listing.title,
        description: params[:description] || @listing.description,
        price_per_night: params[:price_per_night] || @listing.price_per_night,
        location: params[:location] || @listing.location
      )
      render :show
    else
      render json: { error: "Listing not found" }, status: :not_found
    end
  end

  def destroy
    @listing = Listing.find_by(id: params[:id])
    if @listing
      @listing.destroy
      render json: { message: "Listing destroyed successfully" }
    else
      render json: { error: "Listing not found" }, status: :not_found
    end
  end
end
