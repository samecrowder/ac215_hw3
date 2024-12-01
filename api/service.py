from fastapi import FastAPI
import math

app = FastAPI()

@app.get("/q1")
async def calculate_hypotenuse(x: float, y: float):
    return {"result": math.sqrt(x**2 + y**2)}

@app.post("/q2")
async def repeat_text(json_data: dict):
    text = json_data.get("text", "")
    repeat = json_data.get("repeat", 1)
    return {"result": " ".join([text] * repeat)}

@app.get("/")
async def root():
    return {"message": "API is running"}
