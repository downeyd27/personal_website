require 'rails_helper'

RSpec.describe "when a home page loads", type: :feature do
  subject { page }

  it "should have working links" do
    visit root_path
    click_link "#gmail-icon"
    expect("gmail-icon")[:href].to have_http_status(200)
  end
end
