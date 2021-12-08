class TodoItemsController < ApplicationController
	before_action :set_todo_list

	def create
		@todo_iteam = @todo_list.todo_iteam.create(todo_iteam_params)
		redirect_to @todo_list
	end

	private

		def set_todo_list
			@todo_list = TodoItems.find(params[:todo_iteam_id]
		end

		def todo_iteam_params
			params[:todo_iteam].permit(:content)
		end

	
end
