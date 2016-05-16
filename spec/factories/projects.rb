require 'faker'
FactoryGirl.define do
  factory(:project) do
    name                "test name"
    description         "test description"
    purpose             "test purpose"
    technology          "test technology"
    url                 "http://testUrl.com"
    avatar_file_name    { 'Dillon.jpg' }
    avatar_content_type { 'image/jpg' }
    avatar_file_size    { 42660 }
    avatar_updated_at   { Time.now }
  end

  factory :invalid_project, parent: :project do |f|
    f.name nil
  end
end
