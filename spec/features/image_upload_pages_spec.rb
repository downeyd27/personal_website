require 'rails_helper'

describe 'upload an image' do
  before :each do
    @project = FactoryGirl.create(:project)
  end

  it 'uploads a selected image' do
    visit new_project_path
    fill_in 'Name', with: "Portfolio picture"
    fill_in 'Technology:', with: @project.technology
    fill_in 'Description:', with: @project.description
    fill_in 'Purpose:', with: @project.purpose

    page.attach_file("Choose File", 'spec/fixtures/images/Dillon.jpg')
    click_button 'Create Project'
    expect(page).to have_content 'Portfolio picture'
  end

  it "should validate size of image is less than 10Mb" do
    pending
    image = File.new("#{Rails.root}/spec/fixtures/images/Dillon.jpg")
    image.stub(:size).and_return(11.megabytes)

    @information.attachment = image
    @information.should_not be_valid
    @information.should have(1).error_on(:attachment)
  end
end
