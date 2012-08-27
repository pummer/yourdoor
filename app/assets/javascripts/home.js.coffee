# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  if $('#applyNow').length > 0
    $('#applyNowButton').bind 'click', ->
      $('#applyNow').fadeOut '200', ->
        $("#checkEmail").fadeIn '200'
        $(".inputable").trigger 'focus'
    $('#SubmitEmail').bind 'click', ->
      $('#HomePageForm').submit()