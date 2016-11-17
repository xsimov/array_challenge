def array_challenge(input_array)
  return [] if !input_array.is_a?(Array)
  input_array.each_with_object([]) do |element, output_array|
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
