class CreateCourseMappings < ActiveRecord::Migration[6.0]
  def change
    create_table :course_mappings do |t|

      t.timestamps
    end
  end
end
