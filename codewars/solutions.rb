def expanded_form(num)
    num.to_s.split('').reverse.map.with_index{|c, i| c + ("0" * i)}.reverse.select{|s| s[/[1-9]/]}.join(' + ')
end

def get_sum(a,b)
  Range.new(*[a,b].sort).inject(:+)
end

def duplicate_count(text)
  h = Hash.new(0)
  text.downcase.each_char {|c| h[c] += 1}
  h.delete_if {|k,v| v == 1}
  h.values.count
end

def disemvowel(str)
  str.chars.reject{|c| /[aeiou]/i === c }.join
end

def XO(str)
  str.downcase.count('x') == str.downcase.count('o')
end
