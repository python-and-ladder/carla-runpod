# app/main.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/predict")
def predict():
    # TODO: call your existing Python logic here
    result = {"message": "hello from FastAPI"}
    return result
