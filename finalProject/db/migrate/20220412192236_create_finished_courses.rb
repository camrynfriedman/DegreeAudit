class CreateFinishedCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :finished_courses do |t|
      t.belongs_to :course
      t.belongs_to :user
      t.timestamps
    end
  end
end
