###*
A base view for our frontbone framework.
###

namespace "Pixie", (Pixie) ->
  class Pixie.View extends Backbone.View
    initialize: ->
      @templateDir ||= "templates/"

      # Force jQuery Element
      @el = $(@el)

      # Set up HTML if template exists
      if @template?
        @el.html $(JST["#{@templateDir}#{@template}"]())

      # @settings and @editor now backbone special too
      @settings = @options.settings
      @editor = @options.editor

    include: (module) ->
      Object.extend this, module(this, this)
