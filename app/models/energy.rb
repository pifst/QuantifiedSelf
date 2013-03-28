class Energy < ActiveRecord::Base
  attr_accessible :notes, :value
  validates_inclusion_of :value, :in => 0..10
end
