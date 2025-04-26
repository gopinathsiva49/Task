class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        delimiter = /,|\n/
        if numbers.start_with?("//")
            delimiter, numbers = numbers.split("\n", 2)
            delimiter = Regexp.escape(delimiter[2..])
        end
        n_l = numbers.split(/#{delimiter}|,|\n/).map(&:to_i)
        negatives = n_l.select { |n| n < 0 }
        raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?
        n_l.sum
    end
end
  