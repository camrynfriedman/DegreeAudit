class CreateUsers < ActiveRecord::Migration[6.0]

  def change
    create_table :users do |t|
      t.boolean :admin,       default: false
      t.boolean :ReportActive,       default: false
      t.timestamps
    end
  
  end
end
