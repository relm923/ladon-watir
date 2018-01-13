require 'ladon/watir'
require 'models/page_objects/repo/index'

# Run this automation if you want to inspect GitHub.
# `ladon-run -a ./repo.rb`
class RepoAutomation < Ladon::Watir::BrowserAutomation
  def self.default_ui_url
    'https://github.com/LadonFramework/ladon-watir'
  end

  def build_model
    super

    model.use_state_type(RepoIndexPage)
  end

  def execute
    validate_about
  end

  def validate_about
    assert('GitHub about must match') do
      model.current_state do |page|
        page.about.eql?('A Ladon extension for web application modeling and automation using Watir')
      end
    end
  end
end
