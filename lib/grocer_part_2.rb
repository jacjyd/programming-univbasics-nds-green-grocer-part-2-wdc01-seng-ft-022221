require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # REMEMBER: This method **should** update cart

  cart.map do |thing|
    coupons.each do |sale|
      if thing[:item] == sale[:item] && sale[:num] <= thing[:count]
        sale_things = {
          :item => thing[:item] + (" W/COUPON"),
          :price => sale[:cost]/sale[:num],
          :clearance => thing[:clearance],
          :count => sale[:num]
        }
        thing[:count] -= sale[:num]
        cart << sale_things
        
      elsif thing[:item] == sale[:item] && sale[:num] > thing[:count]
        sale_things = {
          :item => thing[:item] + (" W/COUPON"),
          :price => sale[:cost]/sale[:num],
          :clearance => thing[:clearance],
          :count => thing[:count]
        }
        thing[:count] = 0
        thing[:clearance] = false
        cart << sale_things
      
      end 
      
    end 
  end

  cart
end

def apply_clearance(cart)
  # REMEMBER: This method **should** update cart
  
  cart.map do |thing|
    if thing[:clearance] == true
      thing[:price] *= 0.80
    end
  end 
  cart
  
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
