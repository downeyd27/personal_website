FactoryGirl.define do
  factory(:project) do
    name  "testName"
    description "test description of test project"
    purpose "purpose is to test tests"
    technology "Ruby, FactoryGirl, etc"
    url "http://testUrl.com"
    avatar_file_name { 'Dillon.jpg' }
    avatar_content_type { 'image/jpg' }
    avatar_file_size { 42660 }
    avatar_updated_at { Time.now }
  end

  factory :invalid_project, parent: :project do |f|
    f.name nil
  end
end
