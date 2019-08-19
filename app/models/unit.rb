# frozen_string_literal: true

class Unit < ApplicationRecord
  update_index('units#unit') { self }

  belongs_to :group
end
