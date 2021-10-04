def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

# Answer:

# 'no' because `foo` will always return 'yes' which means that `bar(foo)` will evaluate to 'no'