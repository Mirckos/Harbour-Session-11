from fastapi import FastAPI
from pydantic import BaseModel
from prometheus_fastapi_instrumentator import Instrumentator
import random, time

app = FastAPI(title="Message Classifier")

class Message(BaseModel):
    text: str

@app.get("/alive")
def alive():
    return {"status": "ok"}

@app.post("/predict")
def predict(msg: Message):
    start = time.time()
    label = "spam" if "buy" in msg.text.lower() else "ham"
    proba = round(random.uniform(0.8, 0.99), 2)
    return {"label": label, "proba": proba, "latency": time.time()-start}


Instrumentator().instrument(app).expose(app)
