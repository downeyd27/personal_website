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
end
