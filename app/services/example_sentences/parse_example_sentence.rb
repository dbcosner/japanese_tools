class ExampleSentences::ParseExampleSentence
  include ::Mandate

  initialize_with :example_sentence

  def call
    parse_sentence(example_sentence)
  end

  private

  def parse_sentence(example_sentence)
    words = Ve.in(:ja).words(example_sentence)

    # NOTE: The return value will still use Ruby data structures.
    # It will NOT be a JSON-formatted String.
    words.map(&:as_json)
  end
end
