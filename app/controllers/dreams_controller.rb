class DreamsController < ApplicationController

  def index
    @dreams = Dream.all.order(created_at: 'desc')
  end

  def new
  end

  def show
    @dream = Dream.find(params[:id])
  end

  def create
    @dream = Dream.create(dream_params)
    redirect_to dreams_path
  end

  def edit
    @dream = Dream.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
    def dream_params
      params.require(:dream).permit(:name, :due)
    end
end
