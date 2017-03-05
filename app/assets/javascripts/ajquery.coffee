$ ->
  $('a.more').click -> 
    $('#section-menu-more').toggle()
  $(window).scroll ->
    wscroll = $(window).scrollTop()
    if wscroll > 300
      $('.topbar').addClass 'header_tweaks'
    else
      $('.topbar').removeClass 'header_tweaks'