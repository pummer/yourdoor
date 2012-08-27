# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
   $('#new_r_app').submit ->
     #Check to see if form is valid
     if $("form").isValid((window[$("form").attr("id")]).validators)
       #Process Credit Card
       $('input[type=submit]').attr('disabled', true)
       payment.processCard()
     false
    
     

 Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
#  payment.setupForm()

payment =
 
 # setupForm: ->
  #  $('#new_payment').submit ->
   #   #$('input[type=submit]').attr('disabled', true)
    #  if $('#card_number').length
    #    payment.processCard()
    #    false
    #  else
    #    false
  
  processCard: ->
    card =
      number: $('#card_number').val()
      cvc: $('#card_code').val()
      expMonth: $('#card_month').val()
      expYear: $('#card_year').val()
    Stripe.createToken(card, payment.handleStripeResponse)
  
  handleStripeResponse: (status, response) ->

    if status == 200
      $('#r_app_i_apps_attributes_0_payment_attributes_stripe_card_token').val(response.id)
      $('#new_r_app')[0].submit()
    else
      $('#stripe_error').text(response.error.message)
      $('input[type=submit]').attr('disabled', false)