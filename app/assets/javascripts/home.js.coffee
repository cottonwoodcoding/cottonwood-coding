  $(window).scroll ->
    if $(".navbar").offset().top > 50
      $(".navbar-fixed-top").addClass "top-nav-collapse"
    else
      $(".navbar-fixed-top").removeClass "top-nav-collapse"

  $ ->
    $("a.page-scroll").bind "click", (event) ->
      $anchor = $(this)
      $("html, body").stop().animate
        scrollTop: $($anchor.attr("href")).offset().top
      , 1500, "easeInOutExpo"
      event.preventDefault()

    $(".navbar-collapse ul li a").click ->
      $(".navbar-toggle:visible").click()

    $('.not_finished').click (e) ->
      e.preventDefault()
      bootbox.alert('This site is currently under constuction. Please check back later.')