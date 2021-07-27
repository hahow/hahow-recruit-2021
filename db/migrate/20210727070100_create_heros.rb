class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heroes do |t|
      t.string :name
      t.string :image
      t.integer :str
      t.integer :int
      t.integer :agi
      t.integer :luk

      t.timestamps
    end
  end
end
