# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  @AddFieldCard=->
    field=$(".field_card")
    num = field.find("input").length+1;
    $('<br><input type="text" id="fraud_cards_card'+num+'" name="fraud[cards][card'+num+']" placeholder="card" /><button id="RemCard'+num+'" class="btn btn-default remove">–</button>').appendTo(field)
    $("#RemCard"+num).click ->
      $("#fraud_cards_card"+num).remove();
      $("#RemCard"+num).remove()
      $('br').remove()



  @AddFieldPhone=->
    field=$(".field_phone")
    num = field.find("input").length+1;
    $('<br><input type="text" id="fraud_phones_phone'+num+'" name="fraud[phones][phone'+num+']" placeholder="phone" minlength="10",  maxlength="10" /><button id="RemPhone'+num+'" class="btn btn-default remove">–</button>').appendTo(field)
    $("#RemPhone"+num).click ->
      $("#fraud_phones_phone"+num).remove();
      $("#RemPhone"+num).remove()
      $('br').remove()


  @AddFieldEmail=->
    field=$(".field_email")
    num = field.find("input").length+1;
    $('<br><input type="email" id="fraud_emails_email'+num+'" name="fraud[emails][email'+num+']" placeholder="email" /><button id="RemEmail'+num+'" class="btn btn-default remove">–</button>').appendTo(field)
    $("#RemEmail"+num).click ->
      $("#fraud_emails_email"+num).remove();
      $("#RemEmail"+num).remove()
      $('br').remove()
  @AddFieldSkype=->
    field=$(".field_skype")
    num = field.find("input").length+1;
    $('<br><input type="text" id="fraud_skypes_skype'+num+'" name="fraud[skypes][skype'+num+']" placeholder="skype" /><button id="RemSkype'+num+'" class="btn btn-default remove">–</button>').appendTo(field)
    $("#RemSkype"+num).click ->
      $("#fraud_skypes_skype"+num).remove();
      $("#RemSkype"+num).remove()
      $('br').remove()
  @AddFieldCity=->
    field=$(".field_city")
    num = field.find("input").length+1;
    $('<br><input type="text" id="fraud_cities_city'+num+'" name="fraud[cities][city'+num+']" placeholder="city" /><button id="RemCity'+num+'" class="btn btn-default remove">–</button>').appendTo(field)
    $("#RemCity"+num).click ->
      $("#fraud_cities_city"+num).remove();
      $("#RemCity"+num).remove()
      $('br').remove()
  @AddFieldRegion=->
    field=$(".field_region")
    num = field.find("input").length+1;
    $('<br><input type="text" id="fraud_regions_region'+num+'" name="fraud[regions][region'+num+']" placeholder="region" /><button id="RemRegion'+num+'" class="btn btn-default remove">–</button>').appendTo(field)
    $("#RemRegion"+num).click ->
      $("#fraud_regions_region"+num).remove();
      $("#RemRegion"+num).remove()
      $('br').remove()