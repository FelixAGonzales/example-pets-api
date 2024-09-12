class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render template: "pets/index"
  end
  
  def create
    @pet = Pet.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed]
      )
      @pet.save
      render :show
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render :show
  end
end 
