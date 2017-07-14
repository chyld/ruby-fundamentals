def expanded_form(num)
    num.to_s.split('').reverse.map.with_index{|c, i| c + ("0" * i)}.reverse.select{|s| s[/[1-9]/]}.join(' + ')
end

