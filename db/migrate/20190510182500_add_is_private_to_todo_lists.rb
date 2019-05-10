class AddIsPrivateToTodoLists < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_lists, :is_private, :boolean, default: false
  end
end
