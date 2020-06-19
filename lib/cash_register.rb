class CashRegister
  attr_accessor :total
  attr_reader :discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @transaction = {price: 0, item: []}
  end

  def add_item(item, price, quantity=1)
    quantity.times do
      @items << item
      @total = @total + price
    end
    # keep record of last transaction
    @transaction[:price] = price
    @transaction[:item] << item
  end

  def get_discount
    @total = (total * (100.00 - @discount)/100).to_i
  end

  def apply_discount
    if @discount.nil?
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{self.get_discount}."
    end
  end

  def void_last_transaction
    # remove price from last transaction
    @total -= @transaction[:price]
    # remove items from last transaction
    @items -= @transaction[:item]
  end

end
