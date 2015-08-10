$ ->
  welcomeSectionWidth = $('#welcomeSection').innerWidth()
  currentSlide = 0

  $(window).resize ->
    welcomeSectionWidth = $('#welcomeSection').innerWidth()
    $('#topicsWrapper').css('transform', 'translateX(-' + welcomeSectionWidth*currentSlide + 'px)')

  $('#slide1').on 'click', ->
    currentSlide = 0
    $('#topicsWrapper').css('transform', 'translateX(0)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('#slide2').on 'click', ->
    currentSlide = 1
    $('#topicsWrapper').css('transform', 'translateX(-' + welcomeSectionWidth*currentSlide + 'px)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('#slide3').on 'click', ->
    currentSlide = 2
    $('#topicsWrapper').css('transform', 'translateX(-' + welcomeSectionWidth*currentSlide + 'px)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('#slide4').on 'click', ->
    currentSlide = 3
    $('#topicsWrapper').css('transform', 'translateX(-' + welcomeSectionWidth*currentSlide + 'px)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('#slide5').on 'click', ->
    currentSlide = 4
    $('#topicsWrapper').css('transform', 'translateX(-' + welcomeSectionWidth*currentSlide + 'px)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('#slide6').on 'click', ->
    currentSlide = 5
    $('#topicsWrapper').css('transform', 'translateX(-' + welcomeSectionWidth*currentSlide + 'px)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('#slide7').on 'click', ->
    currentSlide = 6
    $('#topicsWrapper').css('transform', 'translateX(-' + welcomeSectionWidth*currentSlide + 'px)')
    $('#circlesWrapper div').removeClass('current')
    $(this).addClass('current')

  $('.scrollTo').each ->
    $(this).on 'click', (e) ->
      e.preventDefault()

      scrollTo = $(this).attr('href')

      $('html,body').animate
        scrollTop: $(scrollTo).offset().top
      , 1000
