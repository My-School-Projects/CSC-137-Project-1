require './extensions'

def get_tuple(str)
  a = str[2..5]
  b = str[9..12]
  d = str[16..19]
  ovf = str[25]

  [a, b, d, ovf]
end

def b_to_i(bin_str)
  if bin_str[0] == '0'
    return bin_str.to_i 2
  else
    # Invert bits
    str = ""
    for i in 0..3
      str[i] = bin_str[i] == '1' ? '0' : '1'
    end

    0 - (str.to_i(2) + 1)
  end
end

# Run the test bench

system 'vvp ../subtractor > ../subtractor_test.dat'

# Read the test bench output

file = File.open('../subtractor_test.dat', 'r')

test_count = 0
fail_count = 0

file.for_every 4 do |lines|

  # Read values

  a, b, d, ovf = get_tuple lines

  # Convert binary encoded strings to integers

  a = b_to_i a
  b = b_to_i b
  d = b_to_i d
  ovf = ovf.to_i

  test_count += 1

  if d != a - b and ovf == 0
    fail_count += 1
    print "Fail: a: #{a} b: #{b} diff: #{d} ovf: #{ovf}\n"
    print "diff should be #{a - b}\n"
  end

end

print "#{test_count} tests run, #{test_count - fail_count} passed, #{fail_count} failed."
