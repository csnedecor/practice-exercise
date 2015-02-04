class KeepersController < ApplicationController
  def new
    @animal = Animal.find(params[:animal_id])
    @keeper = Keeper.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @keeper = @animal.keepers.new(keeper_params)
    if @keeper.save
      redirect_to animal_path(@animal)
      flash[:notice] = "Successfully added a keeper"
      expire_page controller: :animals, action: :show, id: params[:animal_id]
      expire_page controller: :animals, action: :index
    else
      render "new"
    end
  end

  def keeper_params
    params.require(:keeper).permit(:employee_id)
  end
end
