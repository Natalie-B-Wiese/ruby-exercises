def contains?(hash, search_value)
  # Write a method that recursively searches for a value in a nested hash.
  # It should return `true` if the object contains that value.
  #
  # Examples:
  # contains?({ foo: { bar: "baz" } }, "baz") # true
  # contains?({ foo: { bar: "baz" } }, "egg") # false
  
  hash.each do |key, value|
    if value.is_a?(Hash)
      return true if contains?(value, search_value)
    elsif value==search_value
      return true
    end
    
  end

  return false



end
