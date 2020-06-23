# frozen_string_literal: true

class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.string :unit_code
      t.string :area
      t.string :price
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
