def diamonds(n)
  line = 1

  while line <= n
    blank_space = " " * (n - (line / 2))
    stars = "*" * line
    puts blank_space + stars
    line += 2
  end

  line = n - 2

  while line >= 1
    blank_space = " " * (n - (line / 2))
    stars = "*" * line
    puts blank_space + stars
    line -= 2
  end
end

diamonds(5)
diamonds(9)