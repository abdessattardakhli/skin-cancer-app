# SCancer - Détection de Lésions Cutanées assistée par IA 🔬🩺

**SCancer** est une application web médicale développée avec **Flask** (Python) et **TensorFlow/Keras**. Elle permet aux professionnels de santé d'uploader des images de lésions cutanées pour obtenir une prédiction (Bénin ou Malignant) assistée par Intelligence Artificielle grâce au modèle Deep Learning **VGG16**.

L'application intègre également un tableau de bord analytique et un historique complet des patients géré via **MySQL**.

---

## 🚀 Fonctionnalités
- **Authentification sécurisée** : Système de connexion pour les praticiens.
- **Analyse IA en temps réel** : Upload d'image et prédiction automatique (Malignant/Bénin) avec taux de confiance.
- **Tableau de bord (Dashboard)** : Statistiques en temps réel sur le nombre total d'analyses et la répartition des cas.
- **Historique des patients** : Liste complète des diagnostics enregistrés dans la base de données.
- **Design UI/UX** : Interface moderne, épurée et responsive (Thème Rouge/Blanc).

---

## 🛠️ Technologies utilisées
- **Backend** : Python, Flask
- **Machine Learning** : TensorFlow, Keras, NumPy (Transfer Learning avec VGG16)
- **Base de données** : MySQL, MySQL-Connector-Python
- **Frontend** : HTML5, CSS3, Bootstrap 5, FontAwesome

---

## ⚙️ Prérequis
Avant de commencer, assurez-vous d'avoir installé sur votre machine :
- [Python 3.9 à 3.12](https://www.python.org/downloads/) *(Attention : TensorFlow n'est pas supporté sur Python 3.13+)*
- [XAMPP](https://www.apachefriends.org/fr/index.html) (ou WAMP) pour la base de données MySQL.

---

## 📦 Installation et Lancement

### 1. Base de données
1. Lancez **Apache** et **MySQL** via XAMPP.
2. Allez sur `http://localhost/phpmyadmin`.
3. Cliquez sur l'onglet **Importer**, sélectionnez le fichier `database.sql` situé à la racine du projet, et exécutez-le.
4. Un compte par défaut sera créé : **Nom d'utilisateur :** `admin` | **Mot de passe :** `admin`.

### 2. Modèle IA
1. Obtenez le fichier du modèle pré-entraîné `vgg16_skin_cancer.h5`.
2. Placez ce fichier dans le dossier `model/`.
*(Note : Si vous ne l'avez pas, vous pouvez exécuter le script `create_model.py` pour générer un modèle vide à des fins de test UI).*

### 3. Dépendances Python
Ouvrez un terminal dans le dossier du projet et exécutez la commande suivante pour installer les bibliothèques requises :
```bash
pip install -r requirements.txt
```

### 4. Lancement de l'application
Démarrez le serveur Flask avec la commande :
```bash
python app.py
```
L'application sera accessible sur votre navigateur à l'adresse suivante : **http://127.0.0.1:5000**

---

## 📸 Aperçu du Projet
- **`/`** : Page de connexion
- **`/register`** : Création de compte praticien
- **`/dashboard`** : Statistiques globales
- **`/predict`** : Formulaire d'upload et d'analyse d'image
- **`/patients`** : Tableau récapitulatif des diagnostics
