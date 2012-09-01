class Payment < ActiveRecord::Base
  attr_accessor :stripe_card_token
  attr_accessible :stripe_card_token
  
  validates_presence_of :stripe_card_token
  
  
  def charge_customer(amount, description)
    
    if valid?
      amount = 25
       charge = Stripe::Charge.create(
       amount: (amount.to_f*100).to_i,
       currency: "usd",
       card: stripe_card_token,
       description: description
       )
       
       self.stripe_charge_token = charge.id
    end    
  end
end
