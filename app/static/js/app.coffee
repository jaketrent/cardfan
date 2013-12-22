#= require components/jquery/jquery.js

$ ->
  $('#card').click ->
    $(this).toggleClass 'flipped'