class CreateFinishedCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :finished_courses do |t|
      t.belongs_to :course, foreign_key: 'subCat'
      t.belongs_to :user, foreign_key: 'email'
      t.timestamps
    end
  end
end
