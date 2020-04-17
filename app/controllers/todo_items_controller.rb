class TodoItemsController < ApplicationController
	before_action :set_todo_list



#def index
#end

def create
	@todo_item = @todo_list.todo_items.create(todo_item_params)
	redirect_to @todo_list
end

def destroy
	@todo_item = @todo_list.todo_items.find(params[:id])
	if @todo_item.destroy
		flash[:success] = "Todo List item was deleted"
	else
		flash[:error] = "Tdo List item could not be deleted."
	end

end

private

def set_todo_list
	@todo_;ost = TodoList.find(params[:todo_list_id])
end

def todo_item_params
	params[:todo_item].permit(:content)
end

end
