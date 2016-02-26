# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  @AddFieldCard=->
    field=$(".field_card")
    num = field.find("input").length+1;
    $('<br><input type="text" id="fraud_cards_card'+num+'" name="fraud[cards][card'+num+']" placeholder="card" /><button id="RemCard'+num+'" class="btn btn-default">remove</button>').appendTo(field)
    $("#RemCard"+num).click ->
      $("#fraud_cards_card"+num).remove();
      $("#RemCard"+num).remove()
      $('br').remove()



  @AddFieldPhone=->
    field=$(".field_phone")
    num = field.find("input").length+1;
    $('<br><input type="text" id="fraud_phones_phone'+num+'" name="fraud[phones][phone'+num+']" placeholder="phone" />').appendTo(field)
  @AddFieldEmail=->
    field=$(".field_email")
    num = field.find("input").length+1;
    $('<br><input type="text" id="fraud_emails_email'+num+'" name="fraud[emails][email'+num+']" placeholder="email" />').appendTo(field)
  @AddFieldSkype=->
    field=$(".field_skype")
    num = field.find("input").length+1;
    $('<br><input type="text" id="fraud_skypes_skype'+num+'" name="fraud[skypes][skype'+num+']" placeholder="skype" />').appendTo(field)
  @AddFieldCity=->
    field=$(".field_city")
    num = field.find("input").length+1;
    $('<br><input type="text" id="fraud_cities_city'+num+'" name="fraud[cities][city'+num+']" placeholder="city" />').appendTo(field)
  @AddFieldRegion=->
    field=$(".field_region")
    num = field.find("input").length+1;
    $('<br><input type="text" id="fraud_regions_region'+num+'" name="fraud[regions][region'+num+']" placeholder="region" />').appendTo(field)
