//= require jquery_ujs
//= require bootstrap

window.redirect_to = (url) ->
  window.location.href = url
  return
  

url = document.location.toString()
if url.match("#")
  tabt = ".nav-tabs a[href=#" + url.split("#")[1] + "]"
  $(tabt).tab "show"
$(".nav-tabs a").on "click", (e) ->
  window.location.hash = e.target.hash
  return