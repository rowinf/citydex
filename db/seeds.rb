# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'sqlite3'
require 'json'

data = JSON.load_file!('db/convertjson.json')

# Connect to the SQLite database
db = SQLite3::Database.new(Rails.application.config_for(:database)['database'])

# Specify the table name where you want to insert the data
table_name = 'city_sunshine_hours'
headers = data[0]
headers[-1] = 'Ref'
puts headers


# Remove the headers row from the data
data.shift
data.pop
data.pop
data.pop
data.pop
data.pop
data.pop

insert_statement = <<-SQLite
  INSERT OR REPLACE INTO sunshine_hours (country, city, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, year, ref, created_at, updated_at)
  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
SQLite

data.each do |d|

  # Convert it to an SQLite DATETIME string
  created_at = DateTime.now.strftime('%Y-%m-%d %H:%M:%S')
  updated_at = DateTime.now.strftime('%Y-%m-%d %H:%M:%S')

  db.prepare(insert_statement) do |statement|
    statement.execute(d + [created_at, updated_at])
  end
end

db.close

