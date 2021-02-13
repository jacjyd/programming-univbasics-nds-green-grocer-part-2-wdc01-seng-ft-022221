require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart

  cart.map do |thing|
    while thing[:count] >0 coupons.each do |sale|
      if thing[:item] == sale[:item] && sale[:num] <= thing[:count]
        #binding.pry
        sale_things = {
          :item => thing[:item] + (" W/COUPON"),
          :price => sale[:cost]/sale[:num],
          :clearance => true,
          :count => sale[:num]
        }
        #binding.pry
        thing[:count] -= sale[:num]
        #binding.pry
        cart << sale_things
        
      elsif thing[:item] == sale[:item] && sale[:num] > thing[:count]
        sale_things = {
          :item => thing[:item] + (" W/COUPON"),
          :price => sale[:cost]/sale[:num],
          :clearance => true,
          :count => thing[:count]
        }
        thing[:count] = 0
        cart << sale_things
      
      #elsif thing[:item] == sale[:item] && sale[:num] >= thing[:count]
        #thing[:item] = thing[:item].concat(" W/COUPON")
        #thing[:price] = sale[:cost]/sale[:num]
      
      end 
      
    end 
    
  end
end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
