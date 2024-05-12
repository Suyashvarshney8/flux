from flask import Flask, request, jsonify
import joblib
from sklearn.ensemble import RandomForestRegressor 
import pandas as pd
from flask_cors import CORS # Import CORS from flask_cors


app = Flask(__name__)
CORS(app)
# Load data from Excel sheet
data = pd.read_excel('data.xlsx', sheet_name='FINAL')
data.dropna(inplace=True)

# Extract features (X) and target variable (y)
X = data[['DRI', 'COKE', 'Charge ( Scrap Wt )MT', 'Pig iron']]
y = data['LIME']

# Initialize and train the random forest model
random_forest_model = RandomForestRegressor(n_estimators=95, random_state=42, max_depth=10, min_samples_split=10,
                                              min_samples_leaf=4, max_features='sqrt')
random_forest_model.fit(X, y)

# Save the trained model
joblib.dump(random_forest_model, 'random_forest_model.pkl')


@app.route('/', methods=['GET'])
def index():
    return 'Hello welcome to model'


@app.route('/predict', methods=['POST'])
def predict():
    # Get input data from the request
    data = request.json

    # Extract input features
    dri = data['dri']
    coke = data['coke']
    scrap = data['scrap']
    pig_iron = data['pig_iron']

    # Load the trained model
    model = joblib.load('random_forest_model.pkl')

    # Predict the flux consumed
    prediction = model.predict([[dri, coke, scrap, pig_iron]])

    # Return prediction as JSON response
    return jsonify({'prediction': prediction.tolist()})


if __name__ == '__main__':
    app.run(debug=True)
