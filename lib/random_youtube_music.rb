require 'google/apis/youtube_v3'
require 'securerandom'

def random_youtube_music_link
  youtube = Google::Apis::YoutubeV3::YouTubeService.new
  youtube.key = ENV['YOUTUBE_API_KEY']

  search_response = youtube.list_searches('id,snippet', q: '', type: 'video', video_category_id: '10', order: 'relevance', max_results: 70)
  videos = search_response.items.select {|item| item.id.kind == 'youtube#video'}

  if videos.any?
    video_id = videos.sample.id.video_id
    return "https://www.youtube.com/watch?v=#{video_id}"
  else
    return random_youtube_music_link
  end
end

puts random_youtube_music_link