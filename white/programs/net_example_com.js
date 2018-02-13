var http = require('http');

function call() {

    return http.get({
        host: 'example.com',
        path: '/index.html'
    }, function(response) {
        // Continuously update stream with data
        var body = '';
        response.on('data', function(d) {
            body += d;
	});
    });

}

call();
