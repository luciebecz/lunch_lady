require 'pry'

@main_dish = [ { dish: "Meatloaf", price: 5.00 },
               { dish: "Mysery Meat", price: 3.00 },
               { dish: "Slop", price: 1.00 }
             ]

@side_dish = [ { dish: "Carrots", price: 1.75 },
               { dish: "Yogurt", price: 1.00 },
               { dish: "Beefjerky", price: 0.50 } 
              ]

def main_menu
  puts "Which main menu dish would you like?"
  @main_dish.each_with_index do |dish, index|
    puts "#{index + 1} #{dish[:dish]} #{dish[:price]}"
  end
  @select_main = gets.chomp.to_i - 1
  @first_pick = @main_dish[@select_main]
  if @select_main + 1 > 3
    puts "invalid, try again"
    main_menu
  else
  side_dish
  end
end


def side_dish
  puts "Pick your first side dish"
  @side_dish.each_with_index do |dish, index|
    puts "#{index + 1} #{dish[:dish]} #{dish[:price]}" 
    end
  @select_side1 = gets.chomp.to_i - 1
  @side1 = @side_dish[@select_side1]
  if @select_side1 + 1 > 3
    puts "Invalid selection, please try again"
    side_dish
  else
  side_dish2
  end
end 
    

def side_dish2
  puts "Pick your second side dish"
  @side_dish.each_with_index do |dish, index|
    puts "#{index + 1} #{dish[:dish]} #{dish[:price]}"
  end
  @select_side2 = gets.chomp.to_i - 1
  @side2 = @side_dish[@select_side2]
  if @select_side2 + 1 > 3
    puts "Invalid selection, please try again"
    side_dish2
  else
    total
  end
end


def total
  @total = @first_pick[:price] + @side1[:price] +@side2[:price]
  puts "Your meal consists of #{@first_pick[:dish]}, #{@side1[:dish]}, and #{@side2[:dish]}."
  puts "Amount due: $#{@total}"
end

main_menu

