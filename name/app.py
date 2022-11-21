
from flask import Flask, render_template,request, redirect
from flask_sqlalchemy import SQLAlchemy


app = Flask(__name__)
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///test-db.sqlite3'
db = SQLAlchemy(app)

class Member(db.Model):
    __tablename__ = 'Shohin'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text)
    role = db.Column(db.Text)
    age = db.Column(db.Integer)


@app.before_first_request
def init():
    db.create_all()

@app.route('/', methods=['GET'])
def index():
    datas = Member.query.all()
    return render_template('index.html', lists = datas)

@app.route('/result', methods=['POST'])
def insert():
    name_txt = request.form['name']
    role_txt = request.form['role']
    age_txt = request.form['age']
    shohin = Member(name = name_txt, role =role_txt, age=age_txt)

    db.session.add(shohin)
    db.session.commit()

    return redirect('/')

if __name__ == '__main__':
  app.run(host='0.0.0.0')
