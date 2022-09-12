from flask import Flask, jsonify, request

app = Flask(__name__)
app.config["DEBUG"] = True
jobs = ['first', 'second', 'third', 'fourth', 'fifth']


@app.route('/')
def home():
    return "<h1>Bookjobs</h1><p>This site is a prototype API for creating jobs.</p>"


@app.route('/post', methods=['POST'])
def api_post():
    name = request.args["name"]
    jobs.append(name)
    return '', 200


@app.route('/get', methods=['GET'])
def api_get():
    return jsonify(jobs)


@app.route('/delete', methods=['POST'])
def api_delete():
    if 'name' in request.args:
        name = request.args['name']
        id = jobs.index(name)
    else:
        return "Error: No name name provided. Please specify an name."
    jobs.pop(id)
    return '', 200


app.run(host='0.0.0.0')
