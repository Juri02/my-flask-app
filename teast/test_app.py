from app import app

def test_hello():
    client = app.test_client()
    response = client.get('/')
    assert b'Hello, World!' in response.data

