require 'watir'
require 'ladon/watir/browser'

RSpec.describe Ladon::Watir::Browser do
  describe '.new_local' do
    it 'constructs a new local browser' do
      # Stub the WebDriver class so that we don't create a bridge.
      fake_driver = instance_double(Selenium::WebDriver::Chrome::Driver)
      allow(Selenium::WebDriver).to receive(:for).and_return(fake_driver)

      local_browser = Ladon::Watir::Browser.new_local(type: :chrome)

      expect(local_browser).to be_a_kind_of(::Watir::Browser)
    end
  end

  describe '.new_remote' do
    it 'constructs a new remote browser' do
      # Stub the WebDriver class so that we don't create a bridge.
      fake_driver = instance_double(Selenium::WebDriver::Chrome::Driver)
      allow(Selenium::WebDriver).to receive(:for).and_return(fake_driver)

      remote_browser = Ladon::Watir::Browser.new_remote(
        url: 'http://example.com',
        type: :chrome,
        platform: :macosx
      )

      expect(remote_browser).to be_a_kind_of(::Watir::Browser)
      expect(remote_browser.driver).to eq(fake_driver)
    end
  end

  describe '#screen_height' do
    it 'gets the screen height' do
      # Stub the WebDriver class so that we don't create a bridge.
      fake_driver = instance_double(Selenium::WebDriver::Chrome::Driver)
      allow(Selenium::WebDriver).to receive(:for).and_return(fake_driver)

      local_browser = Ladon::Watir::Browser.new_local(type: :chrome)

      expect(local_browser).to receive(:execute_script)

      local_browser.screen_height
    end
  end

  describe '#screen_width' do
    it 'gets the screen width' do
      # Stub the WebDriver class so that we don't create a bridge.
      fake_driver = instance_double(Selenium::WebDriver::Chrome::Driver)
      allow(Selenium::WebDriver).to receive(:for).and_return(fake_driver)

      local_browser = Ladon::Watir::Browser.new_local(type: :chrome)

      expect(local_browser).to receive(:execute_script)

      local_browser.screen_width
    end
  end
end
