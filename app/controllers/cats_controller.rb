class CatsController < ApplicationController
	before_filter :authenticate_user!
	before_action :find_cat, only: [:update, :edit, :show]

	def index
		@cats = Cat.all
	end 

	def create
		safe_cat = params.require(:cat).permit(:name, :sex, :color, :DOB, :length, :height, :weight, :spayed_neutered, :house_trained, :medical_notes, :human_notes, :other_pet_notes, :description, :adopted)
		@cat = Cat.new safe_cat
    	if @cat.save
    	  redirect_to @cat
    	else
    	  redirect_to 'new'
    end
	end

	def edit
	end

	def new
		@cat = Cat.new
	end

	def search
    	query = params[:q]                                                             
    	@cats = Cat.search_for query 
  	end

	def show
	end

	def update
		safe_cat = params.require(:cat).permit(:name, :sex, :color, :DOB, :length, :height, :weight, :spayed_neutered, :house_trained, :medical_notes, :human_notes, :other_pet_notes, :description, :adopted)
		if @cat.update(safe_cat)
			redirect_to @cat
		else
			redirect_to 'edit'
		end
	end

	private

	def find_cat
		@cat = Cat.find params[:id]
	end

	
end