class TodoItemsController < ApplicationController
    before_action :set_todo_list
    before_action :set_todo_item, except: [:create]

    def create
        @todo_item = @todo_list.todo_items.create(todo_item_params)
        redirect_to @todo_list
    end

    def destroy
        if @todo_item.destroy
            flash[:success] = "A lista foi deletada com sucesso!"
        else
            flash[:error] = "A lista não pôde ser deletada."
        end
        redirect_to @todo_list
    end

    def complete
        @todo_item.toggle_for_complete_state
        redirect_to @todo_list, notice: "Tarefa concluída!"
    end


    private
    def set_todo_list
        @todo_list = TodoList.find(params[:todo_list_id])
    end

    def set_todo_item
        @todo_item = @todo_list.todo_items.find(params[:id])
    end

    def todo_item_params
        params[:todo_item].permit(:content)
    end
end
