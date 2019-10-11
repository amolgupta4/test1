class CreateAurthorsBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :aurthors_books do |t|
      t.references :Aurthor, foreign_key: true
      t.references :Book, foreign_key: true

      t.timestamps
    end
  end
end
