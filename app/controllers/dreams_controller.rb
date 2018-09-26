class DreamsController < ApplicationController

  def index
    @dreams = Dream.all.order(created_at: 'desc')
  end

  def new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
