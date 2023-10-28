class SunshineHour < ApplicationRecord
  scope :index_query, ->(country, page){ where(country: country).order(city: :asc).page(page) }
end
