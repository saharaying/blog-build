#= require jquery-1.8.3.min
#= require jquery.timelinr-0.9.5
#= require bootstrap.min

$ ->
  if $("#timeline").length > 0
    $().timelinr
      arrowKeys: 'true'

  $("[data-toggle='tooltip']").tooltip()