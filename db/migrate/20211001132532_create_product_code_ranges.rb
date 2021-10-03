class CreateProductCodeRanges < ActiveRecord::Migration[6.1]
  def change
    create_table :product_code_ranges do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :begin
      t.integer :end

      t.timestamps
    end
  end
end
