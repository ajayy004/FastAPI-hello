from fastapi import FastAPI

app = FastAPI()


@app.get('/')
def root():
    """
        Home endpoint
    """
    return {'welcome': 'home'}


@app.get('/hello')
def hello():
    """
        hello endpoint
    """
    return {'hello': 'world'}
