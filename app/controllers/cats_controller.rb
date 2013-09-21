class CatsController < ApplicationController
	def index
		@cats = Cat.all
	end 

	def create
		safe_cat = params.require(:cat).permit(:name, :sex, :color, :DOB, :length, :height, :weight, :spayed_neutered, :house_trained, :medical_notes, :human_notes, :other_pet_notes, :description, :adopted)
		@cat = Cat.new safe_cat
    if @cat.save
      redirect_to @cat
    else
      render 'new'
    end
	end

	def new
		@cat = Cat.new
	end


	def show
	end
	
end