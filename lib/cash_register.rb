require 'pry'
class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  @@all = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@all << self
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity

    self.total += price * quantity
  end

  def apply_discount
    if discount > 0
      self.total = total - (total * discount/100)
      #self.total = (total * ((100 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items

    item = []
    # new_register = CashRegister.new
    # new_register.add_item(title, price, quantity)

    self.add_item(title, price, quantity)
    # self.select {|t| t.self.title}
    @@all.map{ |t| t.title }
    # while @@all.length
    # item << self.title

    end
#binding.pry
end

#  puts @@all.map{ |dog| dog.name }
# a = %w{ a b c d e f }
# a.select {|v| v =~ /[aeiou]/}   #=> ["a", "e"]

# name = "paramName"
# instance_variable_get(("@" + name).intern)

# def foo(x, y)
#   method(__method__).parameters.map do |_, name|
#     binding.local_variable_get(name)
#   end
# end
#
# foo(1, 2)  # => 1, 2
