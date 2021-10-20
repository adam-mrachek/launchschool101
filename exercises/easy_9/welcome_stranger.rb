def greetings(name, details)
  full_name = name.join(' ')
  job_title = details.values.join(' ')
  "Hello, #{full_name}! Nice to have a #{job_title} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })