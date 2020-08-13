# Create a class and inherit from ActiveRecord::Migration
class CreateCostumes < ActiveRecord::Migration[4.2]
    
    def change
        create_table :costumes do |t|
            t.string :name
            t.float :price 
            t.string :size 
            t.string :image_url
            t.timestamps
        end
    end
end
# name
# price
# size
# image url

# Data Type	 Examples
# boolean	 true, false
# integer	 2, -13, 485
# string	 "Halloween", "Boo!", strings between 1-255 characters
# datetime	 DateTime.now, DateTime.new(2014,10,31)
# float	     2.234, 32.2124, -6.342
# text	     strings between 1 and 2 ^ 32 - 1 characters

# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 002_create_costumes.rb becomes class CreateCostumes

# Define a change method in which to do the migration
# In this change method, create columns with the correct names and 
# value types according to the spec

# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.