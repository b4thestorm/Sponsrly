module EventsHelper
  def category_hash(category_array)
    hash = Hash.new
    check = category_array.each_with_index.map do |x,i|  
        hash["#{x}".to_sym] = i 
         end
    hash
  end

  
end
