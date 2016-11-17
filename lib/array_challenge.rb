def array_challenge(arg)
  return [] if !arg.is_a?(Array)
  output_array = []
  arg.each do |element|
    if element.is_a?(Array)
      element.each do |inner_element|
        output_array << inner_element
      end
    else
      output_array << element
    end
  end
  output_array
end
