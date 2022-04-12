class CreateFinishedCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :finished_courses do |t|

      t.timestamps
    end
  end
end
