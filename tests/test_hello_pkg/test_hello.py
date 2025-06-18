from hello_pkg import hello


def test_hello_world():
    assert hello.hello_world() == "Hello, world!"
