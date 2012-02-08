http = require 'http'
url = require 'url'

start = (route,handle) ->
    onReq = (req,res) ->
        path = url.parse(req.url).pathname
        
        ret = route handle,path
        
        res.writeHead 200,"Content-Type":'text/html'
        res.write "Hello,jacky.wu, welcome here!\n" + ret
        res.end
    
    http.createServer(onReq).listen process.env.PORT or 8000

exports.start = start