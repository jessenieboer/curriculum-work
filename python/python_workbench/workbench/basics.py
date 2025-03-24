def fib_loop(n):
    """Calculate Fibonacci number using a loop."""
    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a

def fib_rec(n):
    """Calculate Fibonacci number using recursion."""
    match n:
        case 0 | 1:
            return n
        case _:
            return fib_rec(n - 1) + fib_rec(n - 2)

def fact_loop(n):
    """Calculate factorial using a loop."""
    f = 1
    for i in range(2, n + 1):
        f *= i
    return f
    

def fact_rec(n):
    """Calculate factorial using recursion."""
    match n:
        case 0 | 1:
            return 1
        case _:
            return n * fact_rec(n - 1)
