require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create! :name => 'Guildford', :annual_revenue => 224000, :mens_apparel => false, :womens_apparel => true
whistler = Store.create! :name => 'Blackcomb', :annual_revenue => 1900000, :womens_apparel => false, :mens_apparel => true
railtown = Store.create! :name => 'Wings and Horns', :annual_revenue => 430000, :mens_apparel => true, :womens_apparel => true

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false).find_each do |store|
    puts store.name
    puts store.annual_revenue
end

@womens_under_aMilli = Store.where("womens_apparel = true && annual_revenue < 1000000").find_each do |store|
    puts store.name
    puts store.annual_revenue
end



