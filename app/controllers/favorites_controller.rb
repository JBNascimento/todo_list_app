class FavoritesController < ApplicationController

  def update
    favorite = Favorite.where(todo_list: TodoList.find(params[:todo_list]),  user: current_user)
    if favorite == []
      Favorite.create(todo_list: TodoList.find(params[:todo_list]),  user: current_user)
      @favorite_exists = true
    else
      favorite.destroy_all
      @favorite_exists = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end
