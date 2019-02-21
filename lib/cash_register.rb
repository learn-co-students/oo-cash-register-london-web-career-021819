require "pry"

class CashRegister

  attr_accessor :total, :items, :add_item, :price
  attr_reader :discount


  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @price = price
    @total += (price * quantity)
    quantity.times { @items << title }
  end

  def apply_discount  # discount as a percentage!
    if discount !=nil
      discounted_total = total * (1 - (discount.to_f/100))
      @total = discounted_total.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction # remove last transaction from @total
    @total -= @price
  end

end
