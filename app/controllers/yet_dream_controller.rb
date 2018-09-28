class YetDreamController < ApplicationController
  def index
    @yet_dreams = YetDream.all
  end

  def new
    @yet_dream = YetDream.new
  end

  def show
    @yet_dream = YetDream.find(params[:id])
    @new_yet_project = YetProject.new
  end

  def create
    @yet_dream = YetDream.new(yet_dream_params)
    if @yet_dream.save
      redirect_to yet_dream_index_path
    else
      render 'new'
      # render plain: @dream.errors.inspect
    end
  end

  def edit
    @yet_dream = YetDream.find(params[:id])
  end

  def update
    @yet_dream = YetDream.find(params[:id])
    if @yet_dream.update(yet_dream_params)
      redirect_to yet_dream_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @yet_dream = YetDream.find(params[:id])
    @yet_dream.destroy
    redirect_to yet_dream_index_path
  end

  private
    def yet_dream_params
      params.require(:yet_dream).permit(:name)
    end

end
