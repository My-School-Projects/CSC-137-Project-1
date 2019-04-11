
class File
  def for_every(n_lines)
    lines = ''
    each_with_index do |line, i|
      lines += line
      if (i+1) % n_lines == 0
        yield lines
        lines = ''
      end
    end
  end
end

def get_tuple(str)
  a = str[2..5]
  b = str[16..19]
  c = str[26]
  s = str[30..33]

  [a, b, c, s]
end

# Run the testbench

system("vvp ../adder > ../adder_test.dat")

# Read the testbench output

file = File.open("../adder_test.dat", 'r')

test_count = 0
fail_count = 0

file.for_every 4 do |lines|

  # Read values

  a, b, c, s = get_tuple lines

  # Convert binary encoded strings to integers

  a = a.to_i 2
  b = b.to_i 2
  c = c.to_i 2
  s = s.to_i 2

  test_count += 1

  # Test fails if sum + carry * 16 != a + b

  if s + c * 16 != a + b
    fail_count += 1
    print "Fail: a: #{a} b: #{b} s: #{s} c: #{c}\n"
  end
end

print "#{test_count} tests run, #{test_count - fail_count} passed, #{fail_count} failed."
