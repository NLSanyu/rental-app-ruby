# frozen_string_literal: true

class UnitsIndex < Chewy::Index
  define_type Unit do
    field :unit_code
    field :area
    field :price
  end
end
