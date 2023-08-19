class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false, default: "Unkown"
      t.string :icon, null: false, default: "title.png"
      t.references :user

      t.timestamps
    end
  end
end
