def last_digit(lst)
  n = 1
  for x in lst.reverse do
    n = n % 4 + 4 if (n >= 4)
    n = x ** n
  end
  n % 10
end

