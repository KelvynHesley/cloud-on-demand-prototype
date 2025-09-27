from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    # Identifica o container para vermos o balanceamento de carga
    hostname = os.uname()[1]
    return f"<h1>Servidor respondendo do container: {hostname}</h1>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

# Comment teste testado