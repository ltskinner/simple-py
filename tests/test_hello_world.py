from hello_world import run_hello_world


def test_hello_world():
    expected = "hello world"
    result = run_hello_world()
    assert result == expected
