###*
Simple jQuery constructor wrappers for common elements.
###

namespace "Pixie.UI", (UI) ->
  elements = [
    "Button"
    "Canvas"
    "Div"
    "Img"
    "Input"
  ]

  elements.each (type) ->
    tag = type.toLowerCase()
    UI[type] = (options) ->
      options.class = 'btn' if type is 'Button'
      jQuery "<#{tag}/>", options

  # Aliases
  UI.Image = UI.Img
