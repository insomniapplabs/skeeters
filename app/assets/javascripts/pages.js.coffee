# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->



  $('#dashboard-tooltip').tooltip()
  $('#calendar-tooltip').tooltip()
  $('#roster-tooltip').tooltip()
  $('#media-tooltip').tooltip()
  $('#members-tooltip').tooltip()

  #$('.add-post-container').hide()

  $('#datepicker').datepicker
    format: "yyyy-mm-dd"
    todayHighlight: true
    todayBtn: 'linked'
    autoclose: true

  $('#datepicker-p').datepicker
    format: "yyyy-mm-dd"
    todayHighlight: true
    todayBtn: 'linked'
    autoclose: true  

  $('#add-practice-container').hide()
  $('#add-game-container').hide()



  $('#add-game-btn').click (e) ->
    e.preventDefault()
    $('#add-event-container').hide()
    $('#add-game-container').fadeIn("slow")

  $('#cancel-game-btn-btm').click (e) ->
    e.preventDefault()
    $('#add-game-container').hide()
    $('#add-event-container').fadeIn("slow")
    $('#new-game-f').trigger("reset")


  $('#add-practice-btn').click (e) ->
    e.preventDefault()
    $('#add-event-container').hide()
    $('#add-practice-container').fadeIn("slow")


  $('#cancel-practice-btn-btm').click (e) ->
    e.preventDefault()
    $('#add-practice-container').hide()
    $('#add-event-container').fadeIn("slow")
    $('#new-practice-f').trigger("reset")

  $('.add-post-container').hide()
  $('#add-post-btn').click (e) ->
    e.preventDefault()
    $('#add-post-btn').hide()
    $('.add-post-container').fadeIn("slow")

  $('#cancel-post-btn').click (e) ->
    e.preventDefault()
    $('.add-post-container').hide()
    $('#add-post-btn').fadeIn("slow")
    $('#new-post-f').trigger("reset")


  $('.invite-members-container').hide()
  $('#add-member-btn').click (e) ->
    e.preventDefault()
    $('.invite-members-container').fadeIn("slow")
    $('#add-member-btn').fadeOut("slow")


$(document).ready(ready)
$(document).on('page:load', ready)
