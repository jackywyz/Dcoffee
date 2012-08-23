server = require './server'
router = require './router'
reqHandlers = require './reqHandlers'

handle = 
    '/' : reqHandlers.start
    '/start' : reqHandlers.start
    '/stop' : reqHandlers.stop

server.start router.route,handle    