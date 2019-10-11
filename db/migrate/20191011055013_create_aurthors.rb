class CreateAurthors < ActiveRecord::Migration[5.2]
  def change
    create_table :aurthors do |t|
      t.string :first_name
      t.string :last_name
      t.string :Date_of_birth

      t.timestamps
    end
  end
end
