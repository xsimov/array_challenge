def array_challenge(arg)
  return [] if !arg.is_a?(Array)
  arg.each_with_object([]) do |element, output_array|
    flatten(element, output_array)
  end
end

def flatten(element, output_array)
  if element.is_a?(Array)
    element.each do |inner_element|
      flatten(inner_element, output_array)
    end
  else
    output_array << element
  end
end
