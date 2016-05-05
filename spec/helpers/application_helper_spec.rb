require "rails_helper"

RSpec.describe ApplicationHelper, type: :helper do
  describe "#base_title" do
    it "returns the default title" do
      expect(helper.base_title).to eq("Dillon Downey | Index")
    end
  end

  describe "#full_title" do
    it "returns the default title with the current page title" do
      expect(helper.full_title("portfolio")).to eq("#{base_title} | portfolio")
    end
  end
end
