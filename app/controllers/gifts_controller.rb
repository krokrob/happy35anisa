class GiftsController < ApplicationController
  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.new(gift_params)
    @gift.user = current_user
    @gift.save
    redirect_to gift_path(@gift)
  end

  def show
    @gift = Gift.find(params[:id])
  end

  def index
    @gifts = Gift.all
  end
end
