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
  INSERT OR REPLACE INTO sunshine_hours (country, city, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, ref)
  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
SQLite

data.each do |d|
  db.prepare(insert_statement) do |satement|
    statement.execute(d)
  end
end

db.close

