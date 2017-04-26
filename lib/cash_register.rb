class CashRegister

attr_accessor :total, :discount, :add_item, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @last_transaction = []
  @items = []
end

def add_item(item, price, quantity = 1)
    @total +=  price * quantity
    quantity.times do
          @items << item
        end
        @last_transaction = price * quantity
      end

def apply_discount
  if discount == 0
    return "There is no discount to apply."
  else
    self.total -= self.total * @discount/100
      return "After the discount, the total comes to $#{self.total}."
    end
  end

def items
  @items
end

def void_last_transaction
  @total -= @last_transaction
  end
end
