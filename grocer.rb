def find_item_by_name_in_collection(name, collection)
  counter = 0 
  while counter < collection.size do 
    if name == collection[counter][:item]
      return collection[counter]
    end 
    counter += 1 
  end 
  nil 
end

def consolidate_cart(cart)
  consolidated_array = []
  counter2 = 0 
  while counter2 < cart.length do 
    name = cart[counter2][:item] 
    if find_item_by_name_in_collection(name, consolidated_array) == nil
      consolidated_array.push(cart[counter2]) 
      consolidated_array[-1][:count] = 1  
    else 
      item_location = 0 
      counter3 = 0 
      while counter3 < consolidated_array.size do 
        tempname = consolidated_array[counter3][:item]
        if tempname  == name 
          return item_location = counter3 
        end 
        counter3 += 1 
      end 
      consolidated_array[item_location][:count] += 1 
    end 
    counter2 += 1 
  end 
  consolidated_array 
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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