class AddDateOfBirthToAurthor < ActiveRecord::Migration[5.2]
  def change
    add_column :aurthors, :date_of_birth, :string
  end
end
