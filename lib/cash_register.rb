
class CashRegister
    attr_accessor :discount, :total, :last_item_price, :transactions,:item
    @last_item_price

  def initialize(discount=0)
      @total = 0
      @discount = discount
      @@transactions = []
  end #end of initialize

  def add_item(item,price,quantity= 1)
      @total += price * quantity
      i = 1
      while i <= quantity
      @@transactions << item
      i += 1
  end
      @last_item_price = price
  end #end of add_item

  def apply_discount
      if(@discount > 0)
      @total = @total - (@total * @discount/100)
      return "After the discount, the total comes to $#{@total}."
      @total
      else
      return "There is no discount to apply."
      @total
      end
    end #end of apply_discount

    def items
      @@transactions
    end #end of items

    def void_last_transaction
      self.total -= @last_item_price
    end  #end of void_last_transaction

end #end of class
