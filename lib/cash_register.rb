class CashRegister
  attr_accessor :total, :title, :discount, :items, :last_transaction_amount



def initialize(discount = nil)
  @total = 0
  if discount != nil
    @discount = discount
  end
    @items_array = []
    @last_transaction_amount = 0
end

def items
  @items_array
end


def add_item(title, price, quantity = nil)
  @title = title
  if quantity != nil
    quantity.times do @items_array << @title
    end
  else @items_array << @title
  end
  quantity != nil ? @total += (price * quantity) : @total += price
  quantity != nil ? @last_transaction_amount += (price * quantity) : @last_transaction_amount += price
end

def apply_discount
  if @discount != nil
    @total = @total * (100-@discount)/100
    @last_transaction_amount = @total
    "After the discount, the total comes to $#{@total}."
  else "There is no discount to apply."
  end
end

  def void_last_transaction
    @total = @total - @last_transaction_amount
  end

end
