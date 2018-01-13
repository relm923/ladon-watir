require 'ladon/watir'

# Represents the root repo page
class RepoIndexPage < Ladon::Watir::PageObjectState
  span(:about, xpath: '//span[@itemprop="about"]')
end
