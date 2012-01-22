class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :descreption
      t.integer :feedback_id
      t.integer :instructor_id
      t.string :c_level
      t.datetime :begin_time
      t.datetime :end_time
      t.string :room

      t.timestamps
    end
  end
end
