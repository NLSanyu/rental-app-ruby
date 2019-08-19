# frozen_string_literal: true

class Group < ApplicationRecord
  update_index('groups#group') { self }

  has_many :units, dependent: :destroy
end
