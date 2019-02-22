require "pry"
class CashRegister


  attr_accessor :total, :discount, :apply_discount, :items, :last_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(title, price, quantity = 1)
    if quantity > 1
      self.total += (price * quantity)
    else
      self.total += price
    end
    quantity.times do @items << title
  end
    @last_price = price * quantity
end

  def apply_discount

    if
    @discount == 0
    "There is no discount to apply."
    else

    @discount > 0
    disc_multiple = (1.to_f - (@discount.to_f / 100.to_f))
    self.total = self.total * disc_multiple
    "After the discount, the total comes to $#{self.total.to_i}."

    end
  end


    def void_last_transaction
      @total -= @last_price
    end


end
