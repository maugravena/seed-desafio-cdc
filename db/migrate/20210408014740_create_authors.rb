class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :email
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
