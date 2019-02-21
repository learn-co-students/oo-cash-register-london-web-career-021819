class CashRegister

  attr_reader :discount
  attr_accessor :total, :last_price
  def initialize(discount= 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @last_price = price
    @total += price*quantity
    while quantity !=0
      @items << title
      quantity -= 1
    end
  end

  def apply_discount
    if discount != 0
      save_total = @total
      @total -= (total.to_f)*(discount.to_f/100)
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_price
  end
end
