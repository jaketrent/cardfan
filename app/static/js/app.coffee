#= require components/jquery/jquery.js

$ ->
  $('.card').click ->
    $(this).find('.card-inner').toggleClass 'is-facedown'