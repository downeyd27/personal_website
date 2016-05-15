require 'rails_helper'

RSpec.describe Project, type: :model do
  before do
    @project = FactoryGirl.create(:project)
  end

  subject { project }

  describe "model when valid" do
    let(:project) { FactoryGirl.create(:project) }
    it { expect(subject).to respond_to(:id) }
    it { expect(subject).to respond_to(:name) }
    it { expect(subject).to respond_to(:technology) }
    it { expect(subject).to respond_to(:description) }
    it { expect(subject).to respond_to(:url) }
    it { expect(subject).to respond_to(:avatar_file_name) }
    it { expect(subject).to respond_to(:avatar_content_type) }
    it { expect(subject).to respond_to(:avatar_file_size) }
    it { expect(subject).to respond_to(:created_at) }
    it { expect(subject).to respond_to(:updated_at) }

    it { expect(subject).to be_valid }

  end

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
  # TODO: "Figure out how to reset test data base after tests so there is not more than one unique name in the data base when testing for name uniqueness"
  describe "when project name has been taken" do
    before do
      project_with_same_name = @project.dup
      project_with_same_name.save
    end
    it { expect(@project).to_not be_valid }
  end
end
