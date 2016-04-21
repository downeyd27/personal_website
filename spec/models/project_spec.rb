require 'rails_helper'

RSpec.describe Project, type: :model do
  before do
    @project = Project.new( name: "Dillon Downey's Portfolio",
                            url:  "dillondowney@herokuapp.com"
    )
  end

  subject { @project }

  it { should respond_to(:id) }
  it { should respond_to(:name) }
  it { should respond_to(:url) }
  it { should respond_to(:created_at) }
  it { should respond_to(:updated_at) }
end
