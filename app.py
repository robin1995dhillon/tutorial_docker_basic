import os
from flask import Flask, jsonify

app = Flask(__name__)
app.secret_key = os.urandom(24)

@app.route('/', methods=['GET'])
def home():
    return jsonify("Hello from container")
    
