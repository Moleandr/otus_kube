from fastapi import FastAPI


app = FastAPI()


@app.get(path='/health/')
def get_health():
    return {'status': 'OK'}