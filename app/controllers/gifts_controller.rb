class GiftsController < ApplicationController
  def new
    @gift = Gift.new
    authorize @gift
  end

  def create
    @gift = Gift.new(gift_params)
    @gift.user = current_user
    authorize @gift
    @gift.save
    flash[:notice] = 'Faleminderit për Anisën!'
    redirect_to gift_path(@gift)
  end

  def show
    @gift = Gift.find(params[:id])
    authorize @gift
  end

  def index
    @gifts = policy_scope(Gift)
  end

  private

  def gift_params
    params.require(:gift).permit(:photo, :video, :comment)
  end
end
