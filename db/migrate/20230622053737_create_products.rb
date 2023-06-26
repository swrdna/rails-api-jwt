# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.decimal :sale_price, default: 0
      t.decimal :purchase_price, default: 0
      t.float :stock, default: 0
      t.integer :created_by, null: false
      t.timestamp :archived_at, default: nil

      t.timestamps
    end

    add_index :products, :code, unique: true
  end
end
