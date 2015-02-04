class KeepersController < ApplicationController
  def new
    @animal = Animal.find(params[:animal_id])
    @keeper = Keeper.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @keeper = @animal.keepers.new(keeper_params)
    if @keeper.save
      expire_page controller: :animals, action: :show
      redirect_to animal_path(@animal)
      flash[:notice] = "Successfully added a keeper"
    else
      render "new"
    end
  end

  def keeper_params
    params.require(:keeper).permit(:employee_id)
  end
end
