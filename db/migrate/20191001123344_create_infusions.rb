# frozen_string_literal: true

class CreateInfusions < ActiveRecord::Migration[5.2]
  def change
    create_table :infusions do |t|
      t.string :name
      t.integer :infusion_time
      t.string :location
      t.string :brand
      t.string :description
      t.integer :grade
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
