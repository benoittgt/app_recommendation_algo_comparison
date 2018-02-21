require 'terminal-table'
require_relative 'comparison_algorithm'

words_list = [
  { word_a: 'twitter v1', word_b: 'Twitter v2' },
  { word_a: 'ShazamIphone', word_b: 'ShazamAndroid' },
  { word_a: 'Famous Instagram SW', word_b: 'Famous Instagram' },
  { word_a: 'Int Facebook', word_b: 'CI Facebook' },
  { word_a: 'Int Facebook', word_b: 'Instagram Int' }
]

table = Terminal::Table.new(headings: ['Word A', 'Word B', 'Cosine', 'Levenshtein', 'Trigram', 'Jaro-Winkler'])

words_list.each do |words|
  word_a = words[:word_a]
  word_b = words[:word_b]
  table.add_row([
    word_a,
    word_b,
    ComparisonAlgorithm::Cosine.similarity(word_a, word_b),
    ComparisonAlgorithm::Levenshtein.similarity(word_a, word_b),
    ComparisonAlgorithm::Trigrams.similarity(word_a, word_b),
    ComparisonAlgorithm::JaroWinkler.similarity(word_a, word_b)
  ])
end

puts table
