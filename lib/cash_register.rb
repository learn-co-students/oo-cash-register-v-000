class CashRegister
attr_accessor :total, :discount, :items, :previoustotal
attr_reader :titles


  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @previoustotal = []
  end

  def add_item(title, price, quantity = 1)
    previoustotal << price
    quantity.times { items << title }
    @total = (total + (price * quantity))
  end

  def apply_discount
    if discount != 0
      @total = (total - ((discount.to_f/100) * total)).to_int
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = total - previoustotal.slice(-1)

  end

end
