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