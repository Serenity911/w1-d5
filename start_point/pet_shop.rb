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
