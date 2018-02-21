require 'amatch'
require 'string-similarity'
require 'trigram'

module ComparisonAlgorithm
  ROUND = 3
  module Cosine
    def self.similarity(word_a, word_b)
      String::Similarity.cosine(word_a, word_b).round(ROUND)
    end
  end

  module Levenshtein
    def self.similarity(word_a, word_b)
      String::Similarity.levenshtein(word_a, word_b).round(ROUND)
    end
  end

  module Trigrams
    def self.similarity(word_a, word_b)
      Trigram.compare(word_a, word_b).round(ROUND)
    end
  end

  module JaroWinkler
    def self.similarity(word_a, word_b)
      word_a.jarowinkler_similar(word_b).round(ROUND)
    end
  end
end
