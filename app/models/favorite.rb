class Favorite < ApplicationRecord
  belongs_to :todo_list
  belongs_to :user
end
