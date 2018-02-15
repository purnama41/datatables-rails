class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.string :business_name
      t.text :description
      t.decimal :amount
      t.numeric :duration
      t.date :expiry_date
      t.string :owner

      t.timestamps
    end
  end
end
