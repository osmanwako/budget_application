class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :name, null: false, default: "Unkown"
      t.string :amount, null: false, default: "1hr"
      t.text :description, null: false, default: ""
      t.references :user
      t.references :category
      
      t.timestamps
    end
  end
end
