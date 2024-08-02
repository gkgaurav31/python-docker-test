from flask import Flask, jsonify
import os
import sys

app = Flask(__name__)


@app.route('/')
def index():
    test_value = os.getenv('TEST')
    return jsonify({"TEST": test_value})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
