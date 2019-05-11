class TodoItem < ApplicationRecord
  belongs_to :todo_list

  def completed?
    !completed_at.blank?
  end

  def toggle_for_complete_state
    if completed?
        update_attribute(:completed_at, nil)
    else                 
        update_attribute(:completed_at, Time.now) 
    end 
  end

end
