class DreamsController < ApplicationController

  def index
    @dreams = Dream.all.order(created_at: 'asc')
  end

  def new
    @dream = Dream.new
  end

  def show
    @dream = Dream.find(params[:id])
  end

  def create
    @dream = Dream.new(dream_params)
    if @dream.save
      redirect_to dreams_path
    else
      render 'new'
      # render plain: @dream.errors.inspect
    end
  end

  def edit
    @dream = Dream.find(params[:id])
  end

  def update
    @dream = Dream.find(params[:id])
    if @dream.update(dream_params)
      redirect_to dreams_path
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
    def dream_params
      params.require(:dream).permit(:name, :due, :is_done)
    end
end
