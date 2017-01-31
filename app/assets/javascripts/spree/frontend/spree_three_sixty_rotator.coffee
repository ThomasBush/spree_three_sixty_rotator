//= require spree/frontend/threesixty

$(document).on 'ready page:load', ->

  if $('body#product-details').length > 0
    $('#three-sixty-stop').hide()

    product_rotator = $("div[data-hook='product_show']")
    product_rotator_url  = product_rotator.data('product-rotator-url')
    if product_rotator_url != ""

      if ( product_rotator.data('product-type') == 'eyewear' )
        product_rotator_width = 480
      else
        product_rotator_width = 360

      product_rotator_height = 480 
      init_product_rotator(product_rotator_url, product_rotator_height, product_rotator_width)

$(document).on 'click', '#three-sixty-play', ->
  $('#three-sixty-play').hide()
  $('#three-sixty-stop').show()

$(document).on 'click', '#three-sixty-stop', ->
  $('#three-sixty-stop').hide()
  $('#three-sixty-play').show()

init_product_rotator = (url, height, width) ->
  product_slider = $('.product_slider').ThreeSixty(
    totalFrames: 36
    endFrame: 36
    currentFrame: 1
    framerate: 60
    imgList: '.threesixty_images'
    progress: '.spinner'
    imagePath: url
    filePrefix: ''
    ext: '.jpg'
    height: height
    width: width
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
