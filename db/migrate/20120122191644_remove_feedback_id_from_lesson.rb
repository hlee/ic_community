class RemoveFeedbackIdFromLesson < ActiveRecord::Migration
  def up
    remove_column :lessons, :feedback_id
  end

  def down
    add_column :lessons, :feedback_id, :integer
  end
end
