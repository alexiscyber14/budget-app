class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table "transactions", force: :cascade do |t|
      t.string "name", null: false
      t.decimal "amount", null: false, precision: 10, scale: 2
      t.bigint "category_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["category_id"], name: "index_transactions_on_category_id"
    end    
  end
end
