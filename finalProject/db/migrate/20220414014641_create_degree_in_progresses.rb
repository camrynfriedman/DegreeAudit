class CreateDegreeInProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :degree_in_progresses do |t|
      t.belongs_to :user, foreign_key: 'email'
      t.belongs_to :degree, foreign_key: 'name'
      t.timestamps
    end
  end
end
