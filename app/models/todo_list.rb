class TodoList < ApplicationRecord
    has_many :todo_items, dependent: :destroy
    belongs_to :user 
    has_many :favorites, dependent: :destroy

    validates :title, presence: true
    validates :description, presence: true
end
