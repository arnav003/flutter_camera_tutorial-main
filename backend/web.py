import base64

from flask import Flask, request, jsonify

app = Flask(__name__)


@app.route("/api", methods=['GET','POST'])
def main():
    return jsonify({
        "captions":"Refresh again !"
        })  