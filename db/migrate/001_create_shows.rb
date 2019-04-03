class Show < ActiveRecord::Migration[4.2]
  attr_accessor :name, :network, :day, :rating
  def change
    create_table :shows do |t|
      t.string  :name
      t.string  :network
      t.string  :day
      t.integer :rating
    end
  end
end
