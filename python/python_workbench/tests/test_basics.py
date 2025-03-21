import pytest
import workbench.basics as basics

@pytest.mark.parametrize("n, expected", [
    (0, 0),    # Base case
    (1, 1),    # Base case
    (2, 1),
    (3, 2),
    (4, 3),
    (5, 5),
    (6, 8),
    (10, 55),
    (20, 6765),
])
def test_fib_loop(n, expected):
    assert basics.fib_loop(n) == expected

# def test_fib_rec():
#     pass
     
