class CashRegister
  attr_accessor :total, :discount, :price, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = last_transaction
  end

  def add_item(item_name, price, quantity = 1)
    # item_name == string name of the item
    # price == will be the integer price of the item
    # quantity will be how many items are being added

    @total += quantity * price
    quantity.times do #
      @items << item_name
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 0
      @total = total * (1-discount/100.to_f)
      #@total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end
