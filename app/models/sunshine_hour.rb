class SunshineHour < ApplicationRecord
  scope :index_query, ->(country){ where(country: country).order(city: :asc).take(10) }
end
