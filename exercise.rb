class Exercise
  # thorough marklarization protocol
  def self.marklar(str)
    words = str.split(' ');
    words.each_with_index do |word, index| 
      if word.length > 4 
        marklar_variant = "marklar"
        # preserve punctuation/capitalization, eliminate pesky hyphens!
        punctuation = word.gsub(/\w/, '')
        punctuation.gsub!(/[-]/, '')
        marklar_variant.capitalize! if word[0] == word[0].upcase
        marklar_variant += punctuation unless punctuation.nil?
        words[index] = marklar_variant
      end
    end
    words.join(' ');
  end

  # for each even number 1..nth, find that fib value, add to an array and sum.
  def self.even_fibonacci(nth)
    even_fibs = []
    nth.times do |t|
      # still exponential time, but every lil bit counts!
      next unless t % 3 == 0
      even_fibs << fibonacci_helper(t)
    end
    even_fibs.inject(:+)
  end

  # Handles the recursion, finds the nth fibonacci number
  def self.fibonacci_helper(n)
    return n if (0..1).include? n
    fibonacci_helper(n - 1) + fibonacci_helper(n - 2)
  end
end
