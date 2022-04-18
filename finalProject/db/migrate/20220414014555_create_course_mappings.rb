class CreateCourseMappings < ActiveRecord::Migration[6.0]
  def change
    create_table :course_mappings do |t|
      t.belongs_to :course, foreign_key: 'subCat'
      t.belongs_to :degree, foreign_key: 'name'
      t.timestamps
    end
  end
end
