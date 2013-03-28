class CreateEnergies < ActiveRecord::Migration
  def change
    create_table :energies do |t|
      t.integer :value
      t.text :notes

      t.timestamps
    end
  end
end
