# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".dk-delete").bind "ajax:beforeSend", () ->
    $(this).attr "disabled", "disabled"
  $(".dk-delete").bind "ajax:success", (data, status, xhr) ->
    $(this).parent().parent().fadeOut () ->
        $(this).remove();