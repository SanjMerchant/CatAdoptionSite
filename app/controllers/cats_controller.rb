class CatsController < ApplicationController
	def index
		@cats = Cat.all
	end
=begin
	def new
		@cat = Cat.new
	end
=end	
end