class CashRegister
  attr_accessor :total, :discount, :item, :last_transaction
  def initialize (discount =0 )
    @total = 0
    @discount = discount
    @item = []

  end
  def add_item (title, price, x=1)
    self.total += price * x
    while x > 0
      @item << title
      x -=1
    end
     @last_transaction = price * x
    end


    def apply_discount
      if discount == 0
        "There is no discount to apply."
      else
        self.total -= discount * 10
         "After the discount, the total comes to $#{@total}."
       end
    end

    def items
      @item
    end
    def void_last_transaction
      self.total = self.total - self.last_transaction
      self.total = 0
    end
end
