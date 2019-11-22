def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, money)
 return shop[:admin][:total_cash] += money
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_pet_sold)
  return shop[:admin][:pets_sold] += number_pet_sold
end

def stock_count(shop)
  return shop[:pets].length
end

# try to do that with select, it must work as well
def pets_by_breed(shop, breed_to_count)
  selected_breed = []
    for pet in shop[:pets]
      if pet[:breed] == breed_to_count
        selected_breed << pet[:breed]
      end
    end
  return selected_breed
end

def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
      if pet[:name] == pet_name
      return pet
      end
  end
  return nil
end

def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
      if pet[:name] == pet_name
      pet.shift
      end
  end
  return nil
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end

def customer_pet_count(customer)
    return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= new_pet[:price] ? true : false
end
