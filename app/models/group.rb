class Group < ApplicationRecord
    has_many :units, dependent: :destroy
end

