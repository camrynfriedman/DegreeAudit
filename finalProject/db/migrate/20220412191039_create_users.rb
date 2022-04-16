class CreateUsers < ActiveRecord::Migration[6.0]

  def change
    create_table :users do |t|
      t.string :fname,       default: ""
      t.string :lname,       default: ""
      t.string :email_address,       default: ""
      t.boolean :admin,       default: false

      t.timestamps
    end
  
  end
end
