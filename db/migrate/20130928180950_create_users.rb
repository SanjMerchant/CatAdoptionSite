class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :current_pets
      t.boolean :admin

      t.timestamps
    end
  end
end
