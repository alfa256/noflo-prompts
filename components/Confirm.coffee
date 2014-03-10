noflo = require 'noflo'

class Confirm extends noflo.Component
  constructor: ->
    @inPorst =
      in: new noflo.Port 'string'
    @outPorts =
      out: new noflo.Port 'bool'

    @inPorts.in.on 'data', (data) =>
      if data isnt undefined
        @outPorts.out.send ( confirm data )
        @outPorts.out.disconnect()

exports.getComponent = -> new Confirm
