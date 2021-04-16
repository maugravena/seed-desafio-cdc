class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :resume
      t.text :summary
      t.decimal :price
      t.integer :page_number
      t.string :isbn
      t.date :publication_date
      t.references :category, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
    add_index :books, :title, unique: true
    add_index :books, :isbn, unique: true
  end
end
