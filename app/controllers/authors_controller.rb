class AuthorsController < ApplicationController

	def index
		@authors = Author.all
		render :index
	end

	def new 
		@author = Author.new
		render :new
	end

	def create
		new_author = params.require(:authors).permit(:name, :age)
		author = Author.create(new_author)
		redirect_to "/authors/#{author.id}"
	end

    def destroy
    	id = params[:id]
    	author = Author.find(id)
    	author.destroy
    	redirect_to "/authors"
  	end
end
