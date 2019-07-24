class Unit < ApplicationRecord
  update_index('units#unit') { self }

  belongs_to :group
end
