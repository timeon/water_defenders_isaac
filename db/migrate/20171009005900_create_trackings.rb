class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.string :name
      t.integer :value
      t.string :units
      t.references :catogory, index: true

      t.timestamps
    end
  end
end
