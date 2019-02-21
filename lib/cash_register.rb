require 'pry'

class CashRegister
attr_accessor :total, :items, :last_transaction
attr_reader :discount


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
   total = @total
  end

  def add_item(title, price, quantity=1)
    @last_transaction = price * quantity
    self.total += @last_transaction
    quantity.times do
    @items << title
  end
  end

  def apply_discount
    if self.discount > 0
      percent_off = total / 100 * self.discount
      discounted_total = (total - percent_off)
      @total = discounted_total
      "After the discount, the total comes to $#{discounted_total}."
    else
      "There is no discount to apply."
  end
  end
    def void_last_transaction
      @total -= @last_transaction
    end

end
