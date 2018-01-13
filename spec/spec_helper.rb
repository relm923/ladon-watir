if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
else
  require 'simplecov'
  SimpleCov.start
end

require 'rspec'
require 'watir'

class FakeWatirBrowser < Watir::Browser
  def initialize
    # Intentionally does not call `super` to avoid setting up a bridge.
  end

  def goto(_url); end

  def quit; end

  def screen_width; end

  def screen_height; end

  def execute_script(_js); end

  def window
    FakeWatirWindow.new
  end
end

class FakeWatirWindow < Watir::Window
  def initialize; end

  def move_to(x, y); end
end
