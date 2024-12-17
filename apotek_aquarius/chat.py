from flask import Flask, request, jsonify, render_template
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS
from chatbot import chatbot_conversation
 
app = Flask(__name__)
CORS(app, origins=["http://192.168.24.98", "http://10.0.2.2", "http://localhost"], supports_credentials=True)
 
# Konfigurasi database MySQL
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://apotekaquarius:Piyaa0704@localhost/data_obat'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
 
db = SQLAlchemy(app)
 
# Definisikan model untuk tabel 'obat'
class Obat(db.Model):
    __tablename__ = 'obat'
    id = db.Column(db.Integer, primary_key=True)
    nama_obat = db.Column(db.String(50), unique=True)  # Pastikan tipe data sesuai dengan yang ada di database
    deskripsi = db.Column(db.String(500), unique=True)

@app.route("/chatbot", methods=["POST"])
def chatbot_response():
    data = request.get_json()
    if isinstance(data, list):    
        data = data[0]
    nama_obat = data.get('nama_obat', '')
    # deskripsi = data.get('deskripsi', '')
    response = chatbot_conversation(nama_obat)
    # response = chatbot_conversation(deskripsi)
    if not response:
        response_message = "Maaf, kami tidak dapat menjawab pertanyaan anda."
    else:
        response_message = f"{response}\n"
        
        #\n\nNote: \nHanya rekomendasi obat, konsultasi dengan dokter terlebih dahulu sebelum menggunakannya.
        
    # Membuat respons tambahan yang menunjukkan bahwa ini hanya rekomendasi obat
    # additional_message = "Hanya rekomendasi obat, konsultasi dokter terlebih dahulu sebelum menggunakannya."
    
    return jsonify({'message': response_message})
 
# Endpoint GET untuk mengambil kolom 'deskripsi' dari tabel 'obat'
@app.route("/obat", methods=["GET"])
def get_deskripsi_obat():
    deskripsi_data = Obat.query.with_entities(Obat.deskripsi).all()  # Ambil semua data dari kolom 'deskripsi'
    result = [{"deskripsi": deskripsi[0]} for deskripsi in deskripsi_data]  # Buat daftar deskripsi
 
    return jsonify(result)
 
if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5000)
