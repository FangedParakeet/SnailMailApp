$(document).ready ->
  $('#size').change ->
    if $('#size option:selected').text() is "Enter Manually"
      unless $('#manually').is(':visible')
        $('#manually').fadeToggle 500, 'linear'
    else
      if $('#manually').is(':visible')
        $('#manually').fadeToggle 500, 'linear'
  
  $('.what_option').click ->
    $('.selected').switchClass 'selected', 'unselected', 100
    old = '#' + $('.selected').attr('id') + '_text'
    $(old).css 'font-weight', 'normal'
    $(this).switchClass 'unselected', 'selected', 100
    current = '#' + $(this).attr('id') + '_text'
    $(current).css 'font-weight', 'bold'
