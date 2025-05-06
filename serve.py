
import os
from http.server import HTTPServer, SimpleHTTPRequestHandler

class PrettyHTTPRequestHandler(SimpleHTTPRequestHandler):
    def translate_path(self, path):
        # Normalize the path by removing "/./" and "/../" components.
        path = super().translate_path(path)

        # Convert 'pretty' URLs to actual file paths.
        if path.endswith('/'):
            path += 'index.html'
        elif not os.path.exists(path) and os.path.exists(path + '.html'):
            path += '.html'

        return path

def run(server_class=HTTPServer, handler_class=PrettyHTTPRequestHandler):
    # Set the directory to serve from
    os.chdir('./publish')

    # Set the server address and port
    server_address = ('', 8000)
    httpd = server_class(server_address, handler_class)

    print(f"Starting httpd server on port {server_address[1]}")
    httpd.serve_forever()

if __name__ == '__main__':
    run()

