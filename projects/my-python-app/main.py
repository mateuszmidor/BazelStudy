from flask import Flask
from random import randint

from projects.calculator.calculator import Calculator

app = Flask(__name__)
my_calculator = Calculator()

@app.route("/")
def add_some_numbers():
    a = randint(0, 100)
    b = randint(0, 100)
    result = my_calculator.add(a, b)
    return f"{a} + {b} = {result}"

if __name__ == "__main__":
    app.run()