require 've'

RSpec.describe ExampleSentences::ParseExampleSentence do
  it 'Successfully parses an example sentence' do
    example_sentence = 'この世界の教育にはがっかりしてしまう。'
    expected = Ve.in(:ja).words(example_sentence).map(&:as_json)
    actual = described_class.(example_sentence)
    expect(expected).to eq(actual)
  end
end
