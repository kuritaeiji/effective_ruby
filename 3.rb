def extract_error(message)
  if message =~ /^ERROR:\s+(.+)$/
    $1
  else
    'no error'
  end
end

puts(extract_error('ERROR: no method error for nil::NilClass'))

def extract_error2(message)
  if m = message.match(/^ERROR:\s+(.+)$/)
    [m[0], m[1]]
  else
    'no error'
  end
end

puts(extract_error2('ERROR: no method error for nil::NilClass'))