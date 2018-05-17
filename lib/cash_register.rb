class CashRegister 
  
  attr_accessor :discount, :total 
  
  def initialize (discount = nil)  
    @total = 0
    @discount = discount
    @items = []
  end 
    
  def add_item(title, price, quantity=1) 
    self.total += (price * quantity)
    self.items << title 
  end 
  
  def apply_discount
    if self.discount 
      self.total = (self.total * self.discount/100) + self.total
    end 
  end
end 