class PetsController < ApplicationController
  before_action :set_pet, only: %i[show edit update destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to pets_path
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    @pet.save
  end

  def destroy
    @pet.destroy
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :color, :species, :last_seen)
  end
end
