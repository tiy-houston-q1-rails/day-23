class SnacksController < ApplicationController

  def index
    @snacks = Snack.all
  end

  def show
    # send the snack requested to the view
    @snack = Snack.find params[:id]
  end

  def edit
    @snack = Snack.find params[:id]
  end

  def update
    @snack = Snack.find params[:id]
    if @snack.update params.require(:snack).permit(:name, :photo_url)
      redirect_to snack_path(id: @snack.id)
    else
      # the @snack was not valid and we should give user another chance
      render :edit
    end
  end

  def new
    @snack = Snack.new
  end

  def create
    @snack = Snack.new params.require(:snack).permit(:name, :photo_url)
    if @snack.save
      redirect_to snacks_path
    else
      # the @snack was not valid and we should give user another chance
      render :new
    end
  end

  def destroy
    @snack = Snack.find params[:id]
    @snack.destroy
    redirect_to snacks_path
  end
end
