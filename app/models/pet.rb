class Pet < ApplicationRecord
  validate :color, :species
  validate :name, :last_seen
end
