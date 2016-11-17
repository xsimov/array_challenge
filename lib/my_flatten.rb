def my_flatten(input_array)
  return [] unless input_array.is_a?(Array)
  input_array.each_with_object([]) do |element, output_array|
    do_flatten(element, output_array)
  end
end

def do_flatten(element, output_array)
  if element.is_a?(Array)
    element.each do |inner_element|
      do_flatten(inner_element, output_array)
    end
  else
    output_array << element
  end
end
