class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def show
    @tip = Tip.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @tip = Tip.new(tip_params)

    @tip.save
    redirect_to @tip
  end

  def update
  end

  def destroy
  end

  private
  def tip_params
    params.require(:tip).permit(:title, :text)
  end

end
