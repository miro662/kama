from kama.main import route

def test_route():
    result = route()
    assert result == "hello, kama!"
