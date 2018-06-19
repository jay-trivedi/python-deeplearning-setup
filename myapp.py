from waitress import serve

from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello():
    return "Hello World!"

if __name__ == '__main__':
    serve(app, listen='*:8080')