# TODO: Make all the source URL & file paths part of a yml file

# rubocop:disable Metrics/BlockLength
namespace :example_sentences do
  desc 'Populate example sentences & metadata'
  task download_example_sentences: %i[environment] do
    url = 'https://downloads.tatoeba.org/exports/per_language/jpn/jpn_sentences.tsv.bz2'
    temp_file = Down.download(url)
    local_path = Rails.root.join('data', 'corpora', 'jpn_sentences.tsv.bz2')
    FileUtils.mv(temp_file.path, local_path) # overwrites by default
  end

  task extract_example_sentences: %i[environment download_example_sentences] do
    full_path = Rails.root.join('data', 'corpora', 'jpn_sentences.tsv.bz2').to_s
    raise 'Improperly formatted archive' unless Extracter.is_this_a_valid_archive?(full_path)

    data_path = Rails.root.join('data', 'corpora').to_s
    data_full_path = Rails.root.join('data', 'corpora', 'jpn_sentences.tsv').to_s
    File.delete(data_full_path) if File.exist?(data_full_path)
    Extracter.extract_what_to(full_path, data_path)
  end

  task format_example_sentences: %i[environment extract_example_sentences] do
    formatted_file_path = Rails.root.join('data', 'corpora', 'jpn_sentences_formatted.tsv')
    File.delete(formatted_file_path) if File.exist?(formatted_file_path)
    formatted_file = File.open(formatted_file_path, 'a')

    unformatted_file_path = Rails.root.join('data', 'corpora', 'jpn_sentences.tsv')
    begin
      File.readlines(unformatted_file_path).each do |line|
        formatted_line = "#{line.split(/\s+/).last}\n"
        formatted_file.write(formatted_line)
      end
    ensure
      formatted_file.close
    end
  end


end
# rubocop:enable Metrics/BlockLength
