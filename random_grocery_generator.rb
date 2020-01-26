require_relative 'grocer'

def items
	[
		{"AVOCADO" => {:price => 3.00, :clearance => true}},
		{"KALE" => {:price => 3.00, :clearance => false}},
		{"BLACK_BEANS" => {:price => 2.50, :clearance => false}},
		{"ALMONDS" => {:price => 9.00, :clearance => false}},
		{"TEMPEH" => {:price => 3.00, :clearance => true}},
		{"CHEESE" => {:price => 6.50, :clearance => false}},
		{"BEER" => {:price => 13.00, :clearance => false}},
		{"PEANUTBUTTER" => {:price => 3.00, :clearance => true}},
		{"BEETS" => {:price => 2.50, :clearance => false}}
	]
end

def coupons
	[
		{:item => "AVOCADO", :num => 2, :cost => 5.00},
		{:item => "BEER", :num => 2, :cost => 20.00},
		{:item => "CHEESE", :num => 3, :cost => 15.00}
	]
end

def generate_cart
# this generates a cart of random items between 0 and 19
	[].tap do |cart|
		rand(20).times do
			cart.push(items.sample)
		end
	end
end

def generate_coupons
# this generates a random coupon either 0 or 1 times 
	[].tap do |c|
		rand(2).times do
			c.push(coupons.sample)
		end
	end
end

cart = generate_cart
# this generates a single random cart and uses it for the rest of the test
coupons = generate_coupons
# same for coupon 

puts "Items in cart"
cart.each do |item|
# this shows you all the info on the items 
	puts "Item: #{item.keys.first}"
	puts "Price: #{item[item.keys.first][:price]}"
	puts "Clearance: #{item[item.keys.first][:clearance]}"
	puts "=" * 10
end

puts "Coupons on hand"
coupons.each do |coupon|
# advertises coupon on hand, if any 
	puts "Get #{coupon[:item].capitalize} for #{coupon[:cost]} when you by #{coupon[:num]}"
end

puts "Your total is #{checkout(cart: cart, coupons: coupons)}"
# this is the very last thing - write all code before this 