## Jquery written with coffeescript
## Handle vh on iOS
iOS = navigator.userAgent.match(/(iPad|iPhone|iPod)/g)
if iOS && $(".container").css("min-height") == "100vh"
  $(".container").css("min-height", "100px")  
	$("body").css("min-height", "100px")
if iOS && $(".container").css("min-width") == "100vh"
  $(".container").css("min-width", "100px")
jQuery ->
  ## SideBar
  $(".slide-nav").on "click", ->
    if($('.icon-menu').is(":visible"))
      $('.icon-close').show()
      $('.horizontal').show()
      $("#sidebar").css('background-color':'#F1F1F1')
      $('.vertical').hide()
      $('.icon-menu').hide()
      $('.container').css('margin-left':'200px')
    else if ($(window).width() < 720) && $('.icon-menu').is(":visible")
      $('.horizontal').show()
      $('.vertical').hide()
      $('.icon-menu').hide()
      $('.icon-close').show()
    else
      $('.icon-menu').show()
      $('.icon-close').hide()
      $('.horizontal').hide()
      $('.vertical').show()
      $("#sidebar").css('background-color':'#FFFFFF')
      $('.container').css('margin-left':'100px')
    $(".nav-links").animate({width : 'toggle'}, 600)
  ## Side Sublinks animation
  $(".show-sub-links").on "click", -> 
    $(".sub-links").animate({width : 'toggle'}, 600)


  ## Hide Show Sections --- rewrite in progress
  home = $('[data-section="home"]')
  travel = $('[data-section="travel"]')
  about = $('[data-section="about"]')
  blog = $('[data-section="blog"]')
  contact = $('[data-section="contact"]')
  colophon = $('[data-section="colophon"]')  
  $('[data-show="home"]').on "click", ->
    $('[data-section="home"]').show()
    travel.hide()
    about.hide()
    blog.hide()
    contact.hide()
    colophon.hide()
  $('[data-show="travel"]').on "click", ->
    $('[data-section="travel"]').show()
    home.hide()
    about.hide()
    blog.hide()
    contact.hide()    
    colophon.hide()
  $('[data-show="about"]').on "click", ->
    $('[data-section="about"]').show()
    home.hide()
    travel.hide()
    blog.hide()
    contact.hide()
    colophon.hide()
  $('[data-show="blog"]').on "click", ->
    $('[data-section="blog"]').show()
    home.hide()
    travel.hide()
    contact.hide()    
    about.hide()
    colophon.hide()
  $('[data-show="contact"]').on "click", ->
    $('[data-section="contact"]').show()
    home.hide()
    travel.hide()
    blog.hide()    
    about.hide()
    colophon.hide()    
  $('[data-show="colophon"]').on "click", ->
    $('[data-section="colophon"]').show()
    home.hide()
    travel.hide()
    about.hide()
    contact.hide()    
    blog.hide()
    
  ## Home SlideShow  --- rewrite in progress
  setTimeout (->
    $('[data-home="img-slide"]').removeClass "pic-1", 500
    $('[data-home="img-slide"]').addClass "pic-2", 500
  ), 10000

  setTimeout (->
    $('[data-home="img-slide"]').removeClass "pic-2", 500
    $('[data-home="img-slide"]').addClass "pic-3", 500
  ), 20000
  
  setTimeout (->
    $('[data-home="img-slide"]').removeClass "pic-3", 500
    $('[data-home="img-slide"]').addClass "pic-4", 500
  ), 30000  

  setTimeout (->
    $('[data-home="img-slide"]').removeClass "pic-4", 500
    $('[data-home="img-slide"]').addClass "pic-1", 500
  ), 40000  
  
  ## Home Text Position
  
  move = $('[data-text="position"]').outerWidth() /2
  $('[data-text="position"]').css('margin-left' : -move)
  
  $(window).on 'resize', ->
    move = $('[data-text="position"]').outerWidth() /2
    $('[data-text="position"]').css('margin-left' : -move)    
  
     
