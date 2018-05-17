class CashRegister 
  
  attr_accessor :discount, :total, :items
  
  def initialize (discount = nil)  
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0 
  end 
    
  def add_item(title, price, quantity=1) 
    self.total += (price * quantity)
    quantity.times {self.items << title}
    self.last_transaction = price * quantity
  end 
  
  def apply_discount
    if self.discount 
      self.total = (self.total * self.discount/100) + self.total
    end 
  end
  
  def void_last_transaction
    self.total -= self.last_transaction
  end 
end 