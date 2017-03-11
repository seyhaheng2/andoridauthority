$ ->
  $('a.more').click -> 
    $('#section-menu-more').toggle()
  $('.aa_comments_wrapper').click -> 
    $('.aa_comments_wrapper').addClass 'hide'
    $('.none').addClass 'block'

  $(window).scroll ->
    wscroll = $(window).scrollTop()
    if wscroll > 300
      $('.topbar').addClass 'header_tweaks'
    else
      $('.topbar').removeClass 'header_tweaks'
    if wscroll < 2020
      $('.dpode').removeClass 'fixed'
    if wscroll > 2020
      $('.dpode').addClass 'fixed'
