class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :contact_phone

      t.timestamps
    end
  end
end
