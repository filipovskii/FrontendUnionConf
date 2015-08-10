$ ->
  $('#slide1').on 'click', ->
    $('#topicsWrapper').css('transform', 'translateX(0)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('#slide2').on 'click', ->
    $('#topicsWrapper').css('transform', 'translateX(-100vw)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('#slide3').on 'click', ->
    $('#topicsWrapper').css('transform', 'translateX(-200vw)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('#slide4').on 'click', ->
    $('#topicsWrapper').css('transform', 'translateX(-300vw)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('#slide5').on 'click', ->
    $('#topicsWrapper').css('transform', 'translateX(-400vw)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('#slide6').on 'click', ->
    $('#topicsWrapper').css('transform', 'translateX(-500vw)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('#slide7').on 'click', ->
    $('#topicsWrapper').css('transform', 'translateX(-600vw)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('.scrollTo').each ->
    $(this).on 'click', (e) ->
      e.preventDefault()

      scrollTo = $(this).attr('href')

      $('html,body').animate
        scrollTop: $(scrollTo).offset().top
      , 1000
