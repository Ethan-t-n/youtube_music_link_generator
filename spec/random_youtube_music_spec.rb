require 'rspec'
require 'google/apis/youtube_v3'
require './lib/random_youtube_music'

describe 'random_youtube_music_link' do
  before(:all) do
    @youtube = Google::Apis::YoutubeV3::YouTubeService.new
    @youtube.key = ENV['YOUTUBE_API_KEY']
  end

  it 'returns a valid YouTube URL' do
    url_regex = /\Ahttps:\/\/www\.youtube\.com\/watch\?v=.+\z/
    expect(random_youtube_music_link).to match(url_regex)
  end

  it 'returns a video that is categorized as "Music"' do
    search_response = @youtube.list_searches('id,snippet', q: '', type: 'video', video_category_id: '10', order: 'relevance', max_results: 70)
    videos = search_response.items.select {|item| item.id.kind == 'youtube#video'}
    video_ids = videos.map(&:id).map(&:video_id)

    expect(video_ids).to include(random_youtube_music_link.split('=')[1])
  end

  it 'returns a different video each time it is called' do
    links = Array.new(5) { random_youtube_music_link }
    expect(links.uniq.size).to be >= 2
  end
end