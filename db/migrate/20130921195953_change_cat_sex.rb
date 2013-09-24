class ChangeCatSex < ActiveRecord::Migration
  def change
  	change_column :cats, :sex, :boolean #male == true, female == false, may rename in future migration
  end
end