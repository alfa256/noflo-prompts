noflo = require 'noflo'

class Alert extends noflo.Component
  constructor: ->
    @inPorts =
      in: new noflo.Port 'string'
    @outPorts =
      out: new noflo.Port 'string'

    @inPorts.in.on 'data', (data) =>
      if data isnt undefined
        alert data
        @outPorts.out.send true
        @outPorts.out.disconnect()

exports.getComponent = -> new Alert
