class RemoveDateOfBirthFromAurthor < ActiveRecord::Migration[5.2]
  def change
    remove_column :aurthors, :Date_of_birth, :string
  end
end
