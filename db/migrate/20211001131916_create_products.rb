class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :company, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.text :phone_raw_page
      t.string :image

      t.timestamps
    end
  end
end
