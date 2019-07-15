require 'rails_helper'

# Test suite for the Unit model
RSpec.describe Unit, type: :model do
  # Association test
  # ensure Unit model has a 1:m relationship with the ... model
    #   it { should have_many(:items).dependent(:destroy) }

  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:unit_code) }
  it { should validate_presence_of(:area) }
  it { should validate_presence_of(:price) }
end