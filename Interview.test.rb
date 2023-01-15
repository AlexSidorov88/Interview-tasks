
f = File.open 'file.txt', 'r'  #читает текстовый файл и подсчитывает количество всех слов в тексте

@hh = {}
def add_to_hash word
   if !word.empty?
      word.downcase!
      x = @hh[word].to_i
      x += 1
      @hh[word] = x
end
end

f.each do |line|           
 arr = line.split(/\s|\n|\.|\,/)
 arr.each  { |word| add_to_hash(word) }
end

f.close
@hh.each do |key, value|
   puts "#{value}:#{key}"
end