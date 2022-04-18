class CreateCourseMappings < ActiveRecord::Migration[6.0]
  def change
    create_table :course_mappings do |t|
      t.belongs_to :course
      t.belongs_to :degree
      t.timestamps
    end
  end
end
