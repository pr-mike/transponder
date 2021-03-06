# this is an example service for changing div colors
class window.Calculate extends Transponder.Service
  serviceName: 'ex:services:calculate'
  result: 0

  calculate: ->
    @result = 20 * 20

  renderCalculation: ->
    @element.find('.result').text(@result)

  serve: ->
    @calculate()
    @renderCalculation()
