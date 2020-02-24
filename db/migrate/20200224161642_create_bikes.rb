class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.integer :price
      t.string :description
      t.string :brand
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
