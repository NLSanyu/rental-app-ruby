class Unit < ApplicationRecord
    validates_presence_of :unit_code
    validates_presence_of :area
    validates_presence_of :price
end
