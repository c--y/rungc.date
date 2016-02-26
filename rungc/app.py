# coding=utf-8
import flask
import log


app = flask.Flask(__name__)


if __name__ == '__main__':
    app.run('0.0.0.0', port=8000)