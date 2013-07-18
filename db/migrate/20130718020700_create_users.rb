class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :user_id
      t.string :type

      t.timestamps
    end
  end
end
