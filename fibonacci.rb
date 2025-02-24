def fibs(n)
  return [] if n <= 0
  return [0] if n == 1
  return [0, 1] if n == 2

  fib_seq = [0, 1]
  (n - 2).times do
    fib_seq << fib_seq[-1] + fib_seq[-2]
  end
  fib_seq
end

# Recursive version
def fibs_rec(n, fib_seq = [0, 1])
  return [] if n <= 0
  return [0] if n == 1
  return fib_seq[0, n] if fib_seq.length >= n

  fib_seq << fib_seq[-1] + fib_seq[-2]
  fibs_rec(n, fib_seq)
end

# Test cases
puts fibs(8).inspect      # => [0, 1, 1, 2, 3, 5, 8, 13]
puts fibs_rec(8).inspect  # => [0, 1, 1, 2, 3, 5, 8, 13]
puts fibs(1).inspect      # => [0]
puts fibs_rec(1).inspect  # => [0]
puts fibs(2).inspect      # => [0, 1]
puts fibs_rec(2).inspect  # => [0, 1]