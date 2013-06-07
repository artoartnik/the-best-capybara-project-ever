$(document).ready ->
  $('#js-link-1').click ->
    alert 'Hello Capybara!'

  $('#js-form #submit').click ->
    $('#js-form #name-tag').html("Hello, my name is "+$('#js-form #name').val())

  alert('Hello!')
