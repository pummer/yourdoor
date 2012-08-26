class Payment < ActiveRecord::Base
  attr_accessor :stripe_card_token
  attr_accessible :stripe_card_token
  
  def save_with_payment
    
    if valid?
      amount = 25
       charge = Stripe::Charge.create(
       amount: (amount.to_f*100).to_i,
       currency: "usd",
       card: stripe_card_token,
       description: "Rental Test payment"
       )
       
       self.stripe_charge_token = charge.id
       
       save!
     end
    rescue Stripe::InvalidRequestError => e
     logger.error "Stripe error while creating customer: #{e.message}"
     errors.add :base, "There was a problem with your credit card."
     false
  end
end
