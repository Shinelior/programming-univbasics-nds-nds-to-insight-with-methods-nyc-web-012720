$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'
pp directors_database

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  column = 0
  total = 0
while column < director_data.length 
 total += director_data[column][:worldwide_gross]
 column += 1
end
return total_
 
end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  row_index = 0 
   while row_index < directors_database.length
    directors_name = directors_database[row_index][:name]
   
     
 total = gross_for_director(directors_database[row_index][:movies])
  result[directors_name] = total
  #binding.pry
 row_index += 1
end
  return result
  binding.pry
  nil
end
#end
