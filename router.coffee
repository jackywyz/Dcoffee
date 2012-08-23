route = (handle,pathname) ->
    if handle[pathname]
        handle[pathname]()
    else
        return "No request handler found!"

sum = 2/2
exports.route = route
