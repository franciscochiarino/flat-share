class Flat < ApplicationRecord
  serialize :safety
  serialize :highlights
  serialize :favorites
  serialize :standouts

  SPACE      = ['entire_place', 'private_room'].freeze
  KIND       = ['apartment', 'house', 'cabin', 'boat_house'].freeze
  SAFETY     = ['smoke_alarm', 'first_aid_kit', 'fire_extinguisher'].freeze
  HIGHLIGHTS = ['peaceful', 'unique', 'family_friendly', 'stylish', 'central', 'spacious'].freeze
  FAVORITES  = ['wifi', 'tv', 'kitchen', 'washer', 'free_parking', 'air_conditioning', 'dedicated_workspace', 'outdoor_shower'].freeze
  STANDOUTS  = ['pool', 'hot_tub', 'patio', 'BBQ_grill', 'fire_pit', 'pool_table', 'indoor_fireplace', 'outdoor_dining_area', 'exercise_equipment'].freeze

  validates_inclusion_of :space,      in: SPACE
  validates_inclusion_of :kind,       in: KIND
  validates_inclusion_of :safety,     in: SAFETY,     allow_nil: true
  validates_inclusion_of :highlights, in: HIGHLIGHTS, allow_nil: true
  validates_inclusion_of :favorites,  in: FAVORITES,  allow_nil: true
  validates_inclusion_of :standouts,  in: STANDOUTS,  allow_nil: true

  validates_length_of     :description,         within: 1..400
  validates_length_of     :address,             within: 1..100
  validates_presence_of   :city
  validates_presence_of   :zip
  validates_presence_of   :country
  validates_presence_of   :guests
  validates_presence_of   :beds
  validates_presence_of   :bedrooms
  validates_presence_of   :bathrooms
  validates_uniqueness_of :headline
end
