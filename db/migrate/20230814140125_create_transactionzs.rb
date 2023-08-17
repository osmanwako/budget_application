class CreateTransactionzs < ActiveRecord::Migration[7.0]
  def change
    create_table :transactionzs do |t|
      t.string :name, null: false, default: "Unkown"
      t.string :amount, null: false, default: "1hr"
      t.text :description, null: false, default: ""
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.references :category, null: false

      t.timestamps
    end
  end
end
