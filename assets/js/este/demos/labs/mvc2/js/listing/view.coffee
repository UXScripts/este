###*
  @fileoverview este.demos.labs.mvc2.listing.View.
###
goog.provide 'este.demos.labs.mvc2.listing.View'

goog.require 'este.mvc.View'

class este.demos.labs.mvc2.listing.View extends este.mvc.View

  ###*
    @constructor
    @extends {este.mvc.View}
  ###
  constructor: ->
    super()

  ###*
    @inheritDoc
  ###
  fetch: (@params, done) ->
    # ajax call for data
    setTimeout =>
      done()
    , 2000

  ###*
    @inheritDoc
  ###
  render: ->
    @element.innerHTML = """
      view: <b>listing <br>
      <ul>
        <li><a href='#'>1</a>
        <li><a href='#'>2</a>
        <li><a href='#'>3</a>
      </ul>
    """
    window['console']['log'] 'listing rendered'
    return

  ###*
    @inheritDoc
  ###
  enterDocument: ->
    @on @element, 'click', @onClick

  ###*
    @param {goog.events.BrowserEvent} e
    @protected
  ###
  onClick: (e) ->
    return if e.target.tagName != 'A'
    e.preventDefault()
    @show este.demos.labs.mvc2.detail.View, 'id': e.target.innerHTML