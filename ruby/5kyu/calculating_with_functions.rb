v = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
v.each_with_index { |x, i| define_method(x) do |args = nil|
    args ? i.send(*args) : i
  end
} 

def plus n
  ["+", n]
end
def minus n
  ["-", n]
end
def times n
  ["*", n]
end
def divided_by n
  ["/", n]
end
