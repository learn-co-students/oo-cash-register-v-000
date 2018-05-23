


class CashRegister
  
  attr_accessor :item, :items, :total, :discount, :price, :item_name
  

  def initialize(discount=0.0)
    @items = []
    @total = 0.0
    @discount = discount
    puts "discount: #{@discount}."
  end
  
  
  def add_item(name, price, quantity = 1)
    @item_name = name
    @price = price
    @total += @price.to_f * (quantity.to_f)
    @items.concat [item_name] * quantity
    puts "items: #{@items.inspect}."
    puts "item: #{@item_name}, #{@price}."
    puts "total: #{@total}."
    puts "\n"
  end
    
  def items
  	puts @items.inspect
    @items
  end
   


  def apply_discount
    puts @discount
    if @discount == 0.0
      "There is no discount to apply."
    else
      @total *= 1.0 - (@discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end



  def void_last_transaction
    voidme = @price
    @total -= voidme
    @items.pop()
  end
  
end
