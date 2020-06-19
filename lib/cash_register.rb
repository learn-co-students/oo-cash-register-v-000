
#  describe '#void_last_transaction' do
 #   it 'subtracts the last transaction from the total' do
  #    cash_register.add_item("tomato", 1.76)
   #   expect{cash_register.void_last_transaction}.to change{cash_register.total}.from(1.76).to(0.0)
   # end
  # end
  #end


  class CashRegister



# new_register = CashRegister.new
 #     new_registe.add_item("eggs", 1.99)
  #    new_register.add_item("tomato", 1.76, 3)
  #    expect(new_register.items).to eq(["eggs", "tomato", "tomato", "tomato"])


  attr_accessor :total, :discount, :items, :last_transaction



  def initialize(discount = 0, total = 0)
      @total = total
      @discount = discount
        @items = []
  end

  def add_item(item, price, qty = 1)
      self.total += price * qty
      @item = item
      qty.times do
        @items << item
      end
    @last_transaction = qty * price
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
        self.total = self.total - self.last_transaction

#    @items.total =- @last_transaction
  end

  #end class CashRegister
end




