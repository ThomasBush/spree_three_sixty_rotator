//= require spree/frontend/threesixty

$(document).on 'ready page:load', ->

  if $('body#product-details').length > 0
    $('#three-sixty-stop').hide()

    product_rotator_url = $("div[data-hook='product_show']").data('product-rotator-url')
    init_product_rotator(product_rotator_url)

$(document).on 'click', '#three-sixty-play', ->
  $('#three-sixty-play').hide()
  $('#three-sixty-stop').show()

$(document).on 'click', '#three-sixty-stop', ->
  $('#three-sixty-stop').hide()
  $('#three-sixty-play').show()

init_product_rotator = (url) ->
  product_slider = $('.product_slider').ThreeSixty(
    totalFrames: 36
    endFrame: 36
    currentFrame: 1
    framerate: 60
    imgList: '.threesixty_images'
    progress: '.spinner'
    imagePath: url + 'images/'
    filePrefix: ''
    ext: '.jpg'
    height: 405
    width: 360
    disableSpin: true
    zeroPadding: true
    navigation: false)

  $('#three-sixty-previous').bind 'click', (e) ->
    product_slider.previous()

  $('#three-sixty-next').bind 'click', (e) ->
    product_slider.next()

  $('#three-sixty-play').bind 'click', (e) ->
    product_slider.play()

  $('#three-sixty-stop').bind 'click', (e) ->
    product_slider.stop()

  $('#rotator-modal').bind 'hide.bs.modal', ->
    product_slider.stop()
    $('#three-sixty-stop').hide()
    $('#three-sixty-play').show()

  $('#rotator-modal').bind 'shown.bs.modal', ->
    product_slider.gotoAndPlay('72')
