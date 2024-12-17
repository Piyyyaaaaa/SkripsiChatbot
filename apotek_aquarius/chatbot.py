import nltk
import random
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import tkinter as tk
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
from nltk.classify import NaiveBayesClassifier
from nltk import classify
from sklearn.model_selection import train_test_split
from nltk.stem import PorterStemmer, WordNetLemmatizer
from sklearn.feature_extraction import DictVectorizer
from sklearn.naive_bayes import MultinomialNB
from nltk.classify.util import accuracy
from sklearn.metrics import classification_report, confusion_matrix

# Load dataset
df = pd.read_csv(r'C:\Jordy\Skripsi\Apotek Aquarius\apotek_aquarius\dataset\Apotek Aquarius Final.csv')
df['Deskripsi'].fillna('unknown', inplace=True)
df['Nama Obat'].fillna('', inplace=True)

# 2 kolom pada dataset
texts = df['Nama Obat'].values
labels = df['Deskripsi'].values

# Download necessary NLTK resources
nltk.download('punkt')
nltk.download('stopwords')
nltk.download('wordnet')

stop_words = set(stopwords.words('indonesian'))
lemmatizer = WordNetLemmatizer()
stemmer = PorterStemmer()

def preprocess(sentence):
    # Ensure sentence is a string
    if not isinstance(sentence, str):
        sentence = str(sentence)
    # Tokenisasi dan mengubah huruf kecil
    words = word_tokenize(sentence.lower())
    # Melakukan lemmatization mengubah kata menjadi bentuk dasar sesuai makna
    words = [lemmatizer.lemmatize(word) for word in words if word not in stop_words and word.isalnum()]
    # Melakukan stemmer mengubah akhiran kata bisa pake bisa tidak
    words = [stemmer.stem(word) for word in words if word not in stop_words and word.isalnum()]
    return words

def extract_features(words):
    return {word: True for word in words}

# Preprocessing all texts
processed_texts = [preprocess(text) for text in texts]
features = [extract_features(text) for text in processed_texts]
processed_labels = [preprocess(label) for label in labels]
features = [extract_features(label) for label in processed_labels]

# Data untuk training dan testing
X_train, X_test, y_train, y_test = train_test_split(features, labels, test_size=0.2, random_state=42)

# Menggabungkan fitur dan label
train_data = [(feat, label) for feat, label in zip(X_train, y_train)]
test_data = [(feat, label) for feat, label in zip(X_test, y_test)]

# Melakukan training model Naive Bayes
classifier = NaiveBayesClassifier.train(train_data)
# print(train_data)

# Prediksi label pada data uji
y_pred = [classifier.classify(features) for features, _ in test_data]

# Evaluasi akurasi
train_accuracy = accuracy(classifier, train_data)
test_accuracy = accuracy(classifier, test_data)

# Get unique labels from y_test
unique_labels = list(set(y_test) | set(y_pred))

# Menampilkan hasil
print(f"Akurasi pada data pelatihan: {train_accuracy:.2f}")
print(f"Akurasi pada data pengujian: {test_accuracy:.2f}")

# Menghitung dan menampilkan confusion matrix
#cm = confusion_matrix(y_test, y_pred)

# Visualisasi Confusion Matrix
#plt.figure(figsize=(8, 6))
#sns.heatmap(cm, annot=True, fmt="d", cmap="Blues", xticklabels=unique_labels, 
            #yticklabels=unique_labels)
#plt.xlabel('Predicted')
#plt.ylabel('True')
#plt.title('Confusion Matrix for Naive Bayes Classifier')
#plt.show()

# Evaluasi metrik lainnya
# print("\nLaporan Klasifikasi:")
# print(classification_report(y_test, y_pred, target_names=unique_labels))

# Menampilkan fitur informatif
classifier.show_most_informative_features(10)

def chatbot_response(user_input, num_responses=5):
    # Menangani salam terlebih dahulu
    greetings = ['hai', 'halo', 'selamat pagi', 'selamat siang', 'selamat malam']
    if any(greeting in user_input.lower() for greeting in greetings):
        return "Halo, selamat datang di Apotek Aquarius! Ada yang bisa kami bantu?"
    
    # Memproses input user
    processed_input = preprocess(user_input)
    features_input = extract_features(processed_input)

    try:
        # Cek apakah user menanyakan nama obat tertentu
        specific_obat = None
        for obat in df['Nama Obat'].unique():
            if obat.lower() in user_input.lower():  # Mencocokkan nama obat
                specific_obat = obat
                break
        
        if specific_obat:
            # Jika ada nama obat tertentu, hanya keluarkan satu jawaban
            relevant_responses = df[df['Nama Obat'] == specific_obat]['Deskripsi'].values
            response = relevant_responses[0] if len(relevant_responses) > 0 else "Maaf, informasi obat tidak ditemukan."
        
        else:
            # Jika tidak spesifik, gunakan klasifikasi label
            label = classifier.classify(features_input)
            relevant_responses = df[df['Deskripsi'] == label]['Nama Obat'].values
            
            # Pilih beberapa jawaban jika tersedia lebih dari num_responses
            if len(relevant_responses) > num_responses:
                selected_responses = random.sample(list(relevant_responses), num_responses)
            else:
                selected_responses = relevant_responses
            
            # Menggabungkan semua respons ke dalam satu string
            response = "\n".join([f"{i+1}. {response}" for i, response in enumerate(selected_responses)])

        
    except Exception as e:
        response = "Maaf, kami tidak dapat menjawab pertanyaan ini."
    
    return response

def chatbot_conversation(user_input):
    if user_input.lower() == 'exit':
        return "Terima kasih, sampai jumpa!"
    response = chatbot_response(user_input)
    
    return response
