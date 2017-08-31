require 'rails_helper'

RSpec.feature "User creates a new story" do
  scenario "when user enters stuff in the new story page, and clicks submit" do
    visit '/stories'
    click_on "Create a New Story"

    fill_in "adjective_1", with: adjective_1
  end
end
