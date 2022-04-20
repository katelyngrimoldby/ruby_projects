def caesar_cipher(string, shift)
    ascii = string.chars.map do |x|
        x = x.ord
        if (x >= 65 && x <=90) || (x >= 97 && x <= 122)
            x
        else
            x = x.chr
        end
    end

    shifted_ascii = ascii.map {|x| x.is_a?(Numeric)? x += 5: x}

    wrapped_ascii = shifted_ascii.map do |x|
        if (x.is_a?(Numeric) && x > 90 && x < 97) || (x.is_a?(Numeric) && x > 122)
            x = x - 26
        else
            x
        end
    end
    char = wrapped_ascii.map do |x|
        if x.is_a?(Numeric)
           x = x.chr
        else
            x
        end
    end
    final_string = char.join
end

puts caesar_cipher("What a string!", 5)
