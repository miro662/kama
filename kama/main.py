from flask import Flask

app = Flask(__name__)


@app.route("/")
def route():
    return "hello, kama!"


if __name__ == "__main__":
    app.run()
