class TodosController < ApplicationController

	def index
		@todos = Todo.all
		render :index 
	end

	def new
		@todo = Todo.new
		render :new
	end

	def create
		@author = Author.find(params[:id])

		new_todo = params.require(:todo).permit(:description)
		new_todo[:completed] = false

		todo = Todo.create(new_todo)
		@author.todos << todo
		redirect_to "/authors/#{@author.id}/todos"
	end

	def edit
        id = params[:id]
        @todo = Todo.find(id)
        render :edit
    end

    def update
        todo_id = params[:id]
        todo = Todo.find(todo_id)

        updated_attributes = params.require(:todo).permit(:description)
      
        todo.update_attributes(updated_attributes)

        redirect_to "/todos/#{todo_id}"
    end

     def destroy
    	id = params[:id]
    	todo = Todo.find(id)
    	todo.destroy
    	redirect_to "/todos"
  	end

end
