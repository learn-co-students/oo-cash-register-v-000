class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @cart = []
    @items = []
  end

  def add_item(item, price, quantity=1)
    self.total += (price*quantity)
    item_info = {}
    item_info[:item] = item
    item_info[:price] = price
    item_info[:quantity] = quantity

    @cart << item_info

    quantity.times do
      @items << item
    end
    @last_transaction = price * quantity
  end

  def items
    @items
  end


  def apply_discount
      if @discount == 0
        "There is no discount to apply."
      else
        self.total = total * (100 - discount)/100
        "After the discount, the total comes to $#{self.total}."
      end
    end

    def void_last_transaction
      @total = @total - @last_transaction
    end


end
