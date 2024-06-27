import tensorflow as tf
from flask import Flask, request

model = tf.keras.models.load_model('Models/21062024.h5')

daftar_kelas = [
    'Abyssinian',
    'American Curl',
    'American Shorthair',
    'Bengal',
    'Birman',
    'Bombay',
    'British Shorthair',
    'Calico',
    'Domestic',
    'Egyptian Mau',
    'Exotic Shorthair',
    'Khao Manee',
    'Maine Coon',
    'Manx',
    'Munchkin',
    'Norwegian Forest',
    'Ocicat',
    'Persian',
    'Ragdoll',
    'Russian Blue',
    'Scottish Fold',
    'Siamese',
    'Singapura',
    'Sphynx',
    'Tortoiseshell',
    'Turkish Anggora',
    'Tuxedo'
]

app = Flask(__name__)

@app.route('/klasifikasi')
def hello():
    try:
        lokasi = 'Images/' + request.args.get('lokasi')
        img = tf.keras.utils.load_img(lokasi, target_size=(300, 300))
        img_array = tf.keras.utils.img_to_array(img)
        img_array = tf.expand_dims(img_array, 0)
        img_array /= 255

        predictions = model.predict(img_array)
        score = tf.nn.softmax(predictions[0])

        jenis = daftar_kelas[tf.argmax(score)]
        return jenis
    except:
        return 'gagal'
    
if __name__ == '__main__':
    app.run(host='127.0.0.1', port=9696, debug=False)