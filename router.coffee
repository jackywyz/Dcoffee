route = (handle,pathname) ->
    if handle[pathname]
        handle[pathname]()
    else
        return "No request handler found!"
        
exports.route = route        