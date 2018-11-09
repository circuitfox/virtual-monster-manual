# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'ajax:success', (event) ->
  $('#main').html(event.detail[0].body.children)

$(document).on 'ready page:load turbolinks:load', ->
  $('.toggle-label').on 'keydown', (e) ->
    # space or enter
    if e.which is 32 or e.which is 13
      e.preventDefault()
      $(this).click()
