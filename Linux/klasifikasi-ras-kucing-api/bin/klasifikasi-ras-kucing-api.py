import tensorflow as tf
from flask import Flask, request

model_binary = tf.keras.models.load_model('Models/binary-20240709101646.h5')

model_categorical = tf.keras.models.load_model('Models/categorical-21062024.h5')

jenis_kucing = [
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
        hasil = ''

        lokasi = 'Images/' + request.args.get('lokasi')
        img_bin = tf.keras.utils.load_img(lokasi, target_size=(85, 85))
        img_array_bin = tf.keras.utils.img_to_array(img_bin)
        img_array_bin = tf.expand_dims(img_array_bin, 0)
        img_array_bin /= 255

        objek = model_binary.predict(img_array_bin)

        if objek[0] >= 0.5:
            img_cat = tf.keras.utils.load_img(lokasi, target_size=(300, 300))
            img_array_cat = tf.keras.utils.img_to_array(img_cat)
            img_array_cat = tf.expand_dims(img_array_cat, 0)
            img_array_cat /= 255

            predictions = model_categorical.predict(img_array_cat)
            score = tf.nn.softmax(predictions[0])

            hasil = jenis_kucing[tf.argmax(score)]
        else:
            hasil = 'lain'

        return hasil
    except:
        return 'gagal'
    
if __name__ == '__main__':
    app.run(host='127.0.0.1', port=9696, debug=False)