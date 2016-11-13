$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../../../lib")

require 'ladon'
require 'ladon/watir'
require_relative '../page_objects/index'

# Run this automation if you want to listen to nice music.
# `ladon-run -a ./nice_music.rb -s NiceMusicAutomation`
class NiceMusicAutomation < Ladon::Watir::BrowserAutomation
  def self.default_url
    'http://youtube.com'
  end

  def default_browser
    :chrome
  end

  def default_platform
    :windows
  end

  def self.abstract?
    false
  end

  def build_model
    super

    model.use_state_type(YouTubeIndexPage)
  end

  def execute
    model.current_state do |page|
      page.enter_search(term: 'never gonna give you up')
    end

    model.make_transition

    model.current_state do |page|
      page.find_result(title: 'Rick Astley - Never Gonna Give You Up')
    end

    model.make_transition

    sleep 212 # 3:32, just long enough to listen to the whole song.
  end
end