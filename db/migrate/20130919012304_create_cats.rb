class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :sex
      t.string :color
      t.integer :age
      t.string :size
      t.boolean :spayed_neutered
      t.boolean :house_trained
      t.string :medical_notes
      t.string :human_notes
      t.string :other_pet_notes
      t.string :description
      t.boolean :adopted

      t.timestamps
    end
  end
end
