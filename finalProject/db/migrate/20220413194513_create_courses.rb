class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title,              null: false, default: ""
      t.string :subCat,              null: false, default: ""
      t.integer :MaxCH,              null: false, default: 0
      t.integer :MinCH,              null: false, default: 0

      t.timestamps
    end
  end
end
