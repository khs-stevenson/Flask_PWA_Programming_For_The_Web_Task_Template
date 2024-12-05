from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return "home"
'''
<!DOCTYPE html>
<html>
<body>

<h2>HTML Forms</h2>

<form action="/create-user" method="POST">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe"><br><br>
  <input type="submit" value="Submit">
</form> 

<p>If you click the "Submit" button, the form-data will be sent to a page called "/action_page.php".</p>

</body>
</html>
''' 

@app.route("/get-user/<user_id>")
def get_user(user_id):
    user_data = {
        "user_id": user_id,
        "name": "John Doe",
        "email": "john.doe@example.com"
    }
    extra = request.args.get("extra")
    if extra:
        user_data["extra"] = extra
    return jsonify(user_data), 200

@app.route("/create-user", methods=["POST"])
def create_user():
    if request.method == "POST":
        data = request.get_json()

        return jsonify(data), 201

if __name__ == "__main__":
    app.run(debug=True)