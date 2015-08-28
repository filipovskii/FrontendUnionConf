$ ->
  currentSlide = 0
  welcomeSectionWidth = $('#welcomeSection').innerWidth()

  slide = (button, currentSlide) ->
    $('#topicsWrapper').css('transform', 'translateX(-' + welcomeSectionWidth*currentSlide + 'px)')
    $('#circlesWrapper div').removeClass('current')
    $(button).addClass('current')

  $(window).resize ->
    welcomeSectionWidth = $('#welcomeSection').innerWidth()
    $('#topicsWrapper').css('transform', 'translateX(-' + welcomeSectionWidth*currentSlide + 'px)')

  $('#slide1').on 'click', ->
    slide(this, 0)

  $('#slide2').on 'click', ->
    slide(this, 1)

  $('#slide3').on 'click', ->
    slide(this, 2)

  $('#slide4').on 'click', ->
    slide(this, 3)

  $('#slide5').on 'click', ->
    slide(this, 4)

  $('#slide6').on 'click', ->
    slide(this, 5)

  $('#slide7').on 'click', ->
    slide(this, 6)

  $('.scrollTo').each ->
    $(this).on 'click', (e) ->
      e.preventDefault()

      scrollTo = $(this).attr('href')

      $('html,body').animate
        scrollTop: $(scrollTo).offset().top
      , 1000


  slide($('#circlesWrapper div')[currentSlide], currentSlide)
