class CreateDegreeInProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :degree_in_progresses do |t|
      t.belongs_to :user
      t.belongs_to :degree
      t.timestamps
    end
  end
end
