class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.boolean :breakfast, :null => false
      t.boolean :lunch, :null => false
      t.boolean :dinner, :null => false

      t.timestamps
    end
  end
end
