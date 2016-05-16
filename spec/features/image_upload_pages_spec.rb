require 'rails_helper'

describe 'upload an image' do
  before :each do
    @project = FactoryGirl.create(:project)
  end

  it 'uploads a selected image' do
    pending "Click button sends avatar to Amazon cloudfront."
    visit new_project_path
    fill_in 'Name', with: "Portfolio picture"
    fill_in 'Technology:', with: @project.technology
    fill_in 'Description:', with: @project.description
    fill_in 'Purpose:', with: @project.purpose
    fill_in 'Url:', with: @project.url
    page.attach_file("#{@project.avatar}", 'spec/fixtures/images/Dillon.jpg')
    click_button 'Create Project'
    expect(page).to have_content 'Portfolio picture'
  end

  it "should validate size of image is less than 10Mb" do
    pending
    image = File.new("#{Rails.root}/spec/fixtures/images/Dillon.jpg")
    image.avatar_file_size.and_return(11.megabytes)

    @information.attachment = image
    @information.should_not be_valid
    @information.should have(1).error_on(:attachment)
  end
end

describe "check images and favicon" do
  before { visit root_path }
  it "should have the portfolio picture" do
    expect(page).to have_css('figure img.portfolioPic')
  end
  it "should have the favicon" do
    expect(page).to have_xpath("/html/head/link[@href='favicon.ico']")
  end
end
