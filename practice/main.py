from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def get_root():
    return {"message": "Hello practice"}

@app.get("/hello")
def get_root():
    return {"message": "Wellcome"}

