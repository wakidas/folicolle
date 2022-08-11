# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :title, null: false
      t.text :body
      t.string :url

      t.timestamps
    end
  end
end
