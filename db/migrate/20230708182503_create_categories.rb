class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string "name", null: false
      t.string "icon", null: false
      t.bigint "user_id", null: false
      t.index ["user_id"], name: "index_categories_on_user_id"
      t.timestamps
    end
  end
end
