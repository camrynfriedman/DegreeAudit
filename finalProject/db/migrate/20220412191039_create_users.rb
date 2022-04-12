class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email_address
      t.string :type
      t.string :password
      t.string :has_many
      t.finished_courses :
      t.string :has_one
      t.degree_in_progress :

      t.timestamps
    end
  end
end
