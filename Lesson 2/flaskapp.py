from flask import Flask
import logging

app = Flask(__name__)

# Setup logging to file
logging.basicConfig(
    filename='/app/logs/app.log',
    level=logging.INFO,
    format='%(asctime)s - %(message)s'
)

@app.route('/')
def hello():
    app.logger.info("Hello endpoint accessed")
    return "Hello World!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)