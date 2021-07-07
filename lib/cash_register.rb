require 'pry'

class CashRegister

  attr_reader :discount
  attr_accessor :total, :quantity, :items, :last_price

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity=1)
  self.total += price*quantity
  quantity.times do
  @items << title
  void_last_transaction = @total-price
  end
  @last_price = price * quantity
end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total*(1.00-(@discount/100.00))
      "After the discount, the total comes to $#{@total.to_int}."
    end
  end

  def void_last_transaction
    @total -= @last_price
  end


end
