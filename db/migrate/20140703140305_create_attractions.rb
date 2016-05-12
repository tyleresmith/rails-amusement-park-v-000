class CreateAttractions < ActiveRecord::Migration
 # Write your migrations here
 def change
   create_table :attractions do |t|
     t.string :name
     t.integer :nausea_rating
     t.integer :happiness_rating
     t.integer :tickets
     t.integer :min_height

     t.timestamps null: false
   end
 end
end


# @rollercoaster = Attraction.create(
#   :name => "Roller Coaster",
#   :tickets => 5,
#   :nausea_rating => 2,
#   :happiness_rating => 4,
#   :min_height => 32
