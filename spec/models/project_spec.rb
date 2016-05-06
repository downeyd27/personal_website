require 'rails_helper'

RSpec.describe Project, type: :model do
  before do
    @project = FactoryGirl.create(:project)
  end

  subject { @project }

  it { should respond_to(:id) }
  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:url) }
  it { should respond_to(:technology) }
  it { should respond_to(:image) }
  it { should respond_to(:created_at) }
  it { should respond_to(:updated_at) }
  it { should be_valid }

  describe "when name is not present" do
    before { @project.name = " " }
    it { expect(@project).to_not be_valid }
  end

  describe "when url is not present" do
    before { @project.url = " "}
    it { expect(@project).to_not be_valid }
  end

  describe "when name is too long" do
    before { @project.name = "Z" * 51 }
    it { expect(@project).to_not be_valid }
  end

  describe "when url is too long" do
    before { @project.url = "http://12345678901234567890123456789012345678901234567890@gmail.com" }
    it { expect(@project).to_not be_valid }
  end

  describe "when project name or url has been taken" do
    before do
      project_with_same_name = @project.dup
      project_with_same_name.save
    end
    it { expect(@project).to_not be_valid }
  end


end
