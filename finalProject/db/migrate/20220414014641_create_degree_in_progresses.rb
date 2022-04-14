class CreateDegreeInProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :degree_in_progresses do |t|

      t.timestamps
    end
  end
end
