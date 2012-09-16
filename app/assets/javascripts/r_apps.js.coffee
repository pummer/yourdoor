# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->

   $('input[type=submit]').attr('disabled', false) 
   Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))

   applicationSubmission = (objs, context) -> 
    if validateStep objs, context
      payment.processCard() 
    false
    
   validateStep = (objs, context) ->
    stepContent = $('#step-'+context.fromStep)
    validationElements = $(stepContent).find('[data-validate]');
    validators = window[$("form").attr('id')].validators
    result = true;
    validationElements.each (i, element) ->
      if !($(element).isValid(validators))
        result = false
        true
    result
    
  
   $("#new_r_app").smartWizard 
     hideButtonsOnDisabled: true
     noForwardJumping: true
     labelFinish: "Submit Application"
     enableFinishButton: false
     onFinish: applicationSubmission
     onLeaveStep: validateStep
     
   $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).parent().hide()
    event.preventDefault()
     
   $('form').on 'click', '.add_fields', (event) ->
     time = new Date().getTime()
     regexp = new RegExp($(this).data('id'), 'g')
     $(this).prev().append("<fieldset>"+$(this).data('fields').replace(regexp, time)+"</fieldset>");
     event.preventDefault()
        

  
   #applicationSubmission = (objs, callback) ->
    # alert "success!"
     #Check to see if form is valid
     #if $("form").isValid((window[$("form").attr("id")]).validators)
      # $('input[type=submit]').attr('disabled', true)
      # payment.processCard()
     #false
    
payment =
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
      #$('input[type=submit]').attr('disabled', false)