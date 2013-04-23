class AddMealsNotes < ActiveRecord::Migration
  def change
    add_column :meals, :notes, :string
  end
end
