require 'pry'

class CashRegister
  attr_accessor :total, :items, :last_transaction

  def initialize(*discount)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount[0]
  end

  def add_item(title, price, *quantity)
     
    if quantity != []
      add_to = Array.new(quantity[0], title).flatten
      self.items << add_to
      self.items = @items.flatten

      @total = @total + (price * quantity[0])

      self.last_transaction = (price * quantity[0])
      
    else
      self.items << title
      
      self.last_transaction = price.to_f
      @total = @total + price
    end
    @total
    @last_transaction
    
  end

  def apply_discount
    if @discount == []
      p "There is no discount to apply."
    else 
      @total = @total - (@total * (@discount[0].to_f / 100))
      @total
      p "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
   @items
  end

  def void_last_transaction
   @total = @total.to_f - @last_transaction.to_f
  end


end
