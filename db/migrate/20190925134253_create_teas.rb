# frozen_string_literal: true

class CreateTeas < ActiveRecord::Migration[5.2]
  def change
    create_table :teas do |t|
      t.string :name
      t.string :fermentation
      t.integer :infusion_time
      t.string :location
      t.string :brand
      t.text :description
      t.integer :grade
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
