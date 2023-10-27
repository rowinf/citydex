class CreateSunshineHours < ActiveRecord::Migration[7.1]
  def change
    create_table :sunshine_hours do |t|
      t.string :country
      t.string :city
      t.float :jan
      t.float :feb
      t.float :mar
      t.float :apr
      t.float :may
      t.float :jun
      t.float :jul
      t.float :aug
      t.float :sep
      t.float :oct
      t.float :nov
      t.float :dec
      t.float :year
      t.string :ref

      t.timestamps
    end
  end
end
