require 'pry'

class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << item
    end
    @last_transaction = {item: item, price: price, quantity: quantity}
  end

  def apply_discount
    if @discount
      @total *= (1 - @discount/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction[:price] * @last_transaction[:quantity]
  end
end
