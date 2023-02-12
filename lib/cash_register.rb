class CashRegister
  attr_reader :total, :discount, :items

  def initialize(discount=nil)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times { @items << title }
  end

  def apply_discount
    if @discount
      @total *= (100 - @discount) / 100.0
      puts "Discount applied. New total: $#{@total}"
    else
      puts "No discount to apply."
    end
  end
end

