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
class TestFib:
      def test_fib_loop(self, n, expected):
          assert basics.fib_loop(n) == expected

      def test_fib_rec(self, n, expected):
          assert basics.fib_rec(n) == expected

@pytest.mark.parametrize("n, expected", [
    (0, 1),    # Base case
    (1, 1),    # Base case
    (2, 2),
    (3, 6),
    (4, 24),
    (5, 120),
    (10, 3628800)
])
class TestFact:
    def test_fact_loop(self, n, expected):
        assert basics.fact_loop(n) == expected

    def test_fact_rec(self, n, expected):
        assert basics.fact_rec(n) == expected
