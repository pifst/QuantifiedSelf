class Meal < ActiveRecord::Base
  attr_accessible :breakfast, :dinner, :lunch, :notes
end
