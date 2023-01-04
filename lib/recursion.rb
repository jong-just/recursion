module Recursion
  def fibs(n, fib_array = [])
    a = 0
    b = 1

    n.times do
      temp = a
      fib_array << a
      a = b
      b = temp + b
    end

    return fib_array
  end

  def fibs_rec(n)
    return n if n <= 1
    fibs_rec(n-1)+ fibs_rec(n-2)
  end

  def fib_seq(num)
    return [0, 1] if num <= 2
    seq = fib_seq(num - 1)
    seq << seq[-2] + seq[-1]
    return seq
  end
end

include Recursion
p fibs_rec(8)
p fib_seq(8)