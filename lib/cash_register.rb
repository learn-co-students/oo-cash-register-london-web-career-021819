class CashRegister

  attr_reader :discount
  attr_accessor :total

  def initialize(discount = 0, total = 0)
    @items = []
    @total = total
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @price = price
    self.total += price * quantity
    quantity.times do
      items << title
    end
  end

  def apply_discount
    if @discount != 0
      self.total = @total * (100-@discount)/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - @price
  end

end
