class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]
#estos puts sacan lo mismo q el puts de la linea 26
puts homes[0].name
puts homes[1].name
puts homes[2].name
puts homes[3].name
puts homes[4].name
# a estos me refiero
homes.each do |hm|
  puts hm.name
  end

homes.each do |hm|
puts "your place is #{hm.name}, situated in #{hm.city} and its price is #{hm.price}"
end


cities = homes.map do |hm|
hm.city
end
puts cities

prices = homes.map do |pr|
pr.price
end
puts prices

average_price = homes.reduce(0){ |sum, home|
	sum + home.price
}

puts average_price.to_f / homes.length


# o puedes poner home.reduce(0.0) y en puts average_price quitar .to_f



