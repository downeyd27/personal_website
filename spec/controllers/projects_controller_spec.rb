require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do

  describe "GET #index" do
    it 'assigns @projects' do
      expect(RSpec).to receive(:deprecate)
      project = FactoryGirl.create(:project)
      get :index
      assigns(:projects).should eq([project])
    end
    it 'renders the index template' do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #new" do
    it 'assigns a new project to @project' do
      pending("todo")
      raise
    end

    it 'renders the new template' do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "GET #show" do
    it 'assigns the requested project to @project' do
      project = FactoryGirl.create(:project)
      get :show, id: project
      assigns(:project).should eq(project)
    end
    it 'renders the :show template' do
      project_id = FactoryGirl.create(:project).id
      get :show, id: project_id
      expect(response).to render_template :show
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it 'creates a new project' do
        expect {
          post :create, project: FactoryGirl.attributes_for(:project)
        }.to change(Project, :count).by(1)
      end

      it 'redirects to the new project' do
        post :create, project: FactoryGirl.attributes_for(:project)
        response.should redirect_to Project.last
      end
    end

    context "with invalid attributes" do
      it 'does not save the new project in the database' do
        expect {
          post :create, project: FactoryGirl.attributes_for(:invalid_project)
        }.to_not change(Project, :count)
      end

      it 're-renders the :new template' do
        post :create, project: FactoryGirl.attributes_for(:invalid_project)
        response.should render_template :new
      end
    end
  end

  describe "GET #edit" do
    it "assigns the requested project to @project" do
      project = FactoryGirl.create(:project)
      get :edit, id: project
      assigns(:project).should eq(project)
    end
  end

  describe "PUT #update" do
    before :each do
      @project = FactoryGirl.create(:project)
    end

    context "with valid attributes" do
      it 'located the requested @project' do
        put :update, id: @project, project: FactoryGirl.attributes_for(:project)
        assigns(:project).should eq(@project)
      end

      it "changes project's attributes"  do
        put :update, id: @project,
        project: FactoryGirl.attributes_for(:project, name: "Example App", description: "Example description", purpose: "To show my portfolio", technology: "Ruby on Rails", url: "http://dillondowney.herokuapp.com", image: "/app/assets/images/example.jpg")
        @project.reload
        expect(@project.name).to eq "Example App"
        expect(@project.description).to eq "Example description"
        expect(@project.purpose).to eq "To show my portfolio"
        expect(@project.technology).to eq "Ruby on Rails"
        expect(@project.url).to eq "http://dillondowney.herokuapp.com"
      end

      it 'redirects to the updated project' do
        put :update, id: @project, project: FactoryGirl.attributes_for(:project)
        response.should redirect_to @project
      end
    end

    context "with invalid attributes" do
      it 'locates the requested @project' do
        put :update, id: @project, project: FactoryGirl.attributes_for(:invalid_project)
        assigns(:project).should eq(@project)
      end

      it "does not change project's attributes" do
        put :update, id: @project,
        project: FactoryGirl.attributes_for(:project, name: nil, description: "Example description", purpose: "To show my portfolio", technology: "Ruby on Rails", url: "http://dillondowney.herokuapp.com")
        @project.reload
        @project.name.should eq("test name")
        @project.description.should eq("test description")
        @project.purpose.should eq("test purpose")
        @project.technology.should eq("test technology")
        @project.url.should eq("http://testUrl.com")
      end

      it "re-renders the edit method" do
        put :update, id: @project, project:   FactoryGirl.attributes_for(:invalid_project)
        response.should render_template :edit
      end
    end
  end

  describe "DELETE #destroy" do
    before :each do
      @project = FactoryGirl.create(:project)
    end

    context "when destroy action is successful" do
      it 'removes the project from the database' do
        expect {
          delete :destroy, id: @project
        }.to change(Project, :count).by(-1)
      end

      it 'redirects to the projects#index' do
        delete :destroy, id: @project
        response.should redirect_to projects_path
      end
    end
  end
end
