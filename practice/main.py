from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def get_root():
    return {"message": "Hello practice"}

@app.get("/hello")
def get_root():
    return {"message": "Wellcome"}

@app.get("/hy")
def get_root():
    return {"message": "How are you"}