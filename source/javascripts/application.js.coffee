#= require jquery-1.8.3.min
#= require jquery.timelinr-0.9.5
#= require bootstrap.min
#= require turbolinks

$(document).on 'ready page:load', ->
  if $("#timeline").length > 0
    $().timelinr
      arrowKeys: 'true'

  $("[data-toggle='tooltip']").tooltip()