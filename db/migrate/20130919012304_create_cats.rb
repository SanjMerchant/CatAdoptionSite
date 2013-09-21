class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :sex
      t.string :color
      t.date :DOB
      t.float :length #nose to base of tail
      t.float :height #paw to shoulder
      t.float :weight
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
