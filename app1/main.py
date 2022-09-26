from flask import Flask, jsonify, request

app = Flask(__name__)
app.config["DEBUG"] = True


@app.route('/', methods=['POST'])
def api_post():
    return "Your Request was: " + request.__str__()

app.run(host='0.0.0.0')
