require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# 1.created 3 new stores
surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts Store.count

# 2. using where method to find mens_apparal is true
@mens_stores = Store.where(mens_apparel: true)

# 3. Loop through each of these stores and output their name and annual revenue on each line.
@mens_stores.each do |store|
  puts "#{store.name} which carries mens apparel has a annual revenue of #{store.annual_revenue}"
end


# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
# ["name = ? and email = ?", "Joe", "joe@example.com"]
@womens_stores = Store.where("annual_revenue < ?", 1000000).where(womens_apparel: true)

@womens_stores.each do |store|
  puts "#{store.name} which carries womens apparel has a annual revenue  #{store.annual_revenue} which is less than 1 million"
end