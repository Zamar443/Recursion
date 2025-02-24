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
  puts 'This was printed recursively'
  return [] if n <= 0
  return [0] if n == 1
  return fib_seq[0, n] if fib_seq.length >= n

  fib_seq << fib_seq[-1] + fib_seq[-2]
  fibs_rec(n, fib_seq)
end

# Merge Sort implementation
def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid...arr.length])

  merge(left, right)
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    sorted << (left.first <= right.first ? left.shift : right.shift)
  end
  sorted + left + right
end

# Test cases
puts fibs(8).inspect      # => [0, 1, 1, 2, 3, 5, 8, 13]
puts fibs_rec(8).inspect  # => [0, 1, 1, 2, 3, 5, 8, 13]
puts fibs(1).inspect      # => [0]
puts fibs_rec(1).inspect  # => [0]
puts fibs(2).inspect      # => [0, 1]
puts fibs_rec(2).inspect  # => [0, 1]

puts merge_sort([3, 2, 1, 13, 8, 5, 0, 1]).inspect # => [0, 1, 1, 2, 3, 5, 8, 13]
puts merge_sort([105, 79, 100, 110]).inspect      # => [79, 100, 105, 110]
