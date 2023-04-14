import base64

from flask import Flask, request, jsonify

import generate

app = Flask(__name__)

@app.route("/", methods=["POST"])
def main():
    file = request.files['image']
    file.save('im-received.jpg')
    # Read the image via file.stream
    caption = generate.generate_captions(r'D:\Events\Mini-Hacks\Sightscope_Flutter\backend\im-received.jpg')
    print(caption)
    return caption