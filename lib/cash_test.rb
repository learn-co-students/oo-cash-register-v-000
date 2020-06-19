require 'pry'


  def apply_discount(total, discount)
    if discount != 0
      new_total = (total * ((100.to_f - discount)/100)).round
      binding.pry
      "After the discount, the total comes to $#{new_total}."
    else
      "There is no discount to apply."
    end
  end


apply_discount(1000, 20)
