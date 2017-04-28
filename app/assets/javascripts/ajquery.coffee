$ ->
  $('.image-link').magnificPopup({type:'image'})
  $(".post-content").fitVids()



  $(document).on 'click', (e) ->
    if $(e.target).closest('a.more').length
      $('#section-menu-more').show()
    else if !$(e.target).closest('a.more').length
      $('#section-menu-more').hide()
    return

  $('.aa_comments_wrapper').click ->
    $('.aa_comments_wrapper').addClass 'hide'
    $('.none').addClass 'block'




  $(document).on 'click', (e) ->
    if $(e.target).closest('.link_dropdown').length
      $('.aa_sticky_dropdown').show()
    else if !$(e.target).closest('.link_dropdown').length
      $('.aa_sticky_dropdown').hide()
    return




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
