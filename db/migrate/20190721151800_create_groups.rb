# frozen_string_literal: true

class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :group_code
      t.string :name
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
