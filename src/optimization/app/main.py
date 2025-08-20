from fastapi import FastAPI

app = FastAPI(title="Optimization Service")

@app.get("/hello")
async def hello():
    return "Hello from Optimization Service!"
