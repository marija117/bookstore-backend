class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :publisher      
      t.string :pubdate
      t.string :edition
      t.numeric :pages
      t.string :attachment
      t.decimal :price
      t.timestamps
    end
  end
end
