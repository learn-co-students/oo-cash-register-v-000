class CashRegister
  attr_accessor :total, :discount, :cart, :transactions



    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @cart = []
      @transactions = []
    end

    def add_item(title, price, quantity = 1)
      @cart.concat([title]*quantity)
      new_price = quantity * price
      @transactions << new_price
      self.total += new_price
    end

    def apply_discount
      percent = @discount *= 10
      self.total -= percent
      if percent == 0
        return "There is no discount to apply."
      else
       return "After the discount, the total comes to $#{self.total}."
     end
    end

    def items
      @cart
    end

    def void_last_transaction
     self.total -= @transactions.pop
    end


end
