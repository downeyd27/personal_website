class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_action :find_all_projects
  before_action :prepare_meta_tags, if: "request.get?"

  # def find_all_projects
  #   @projects.all = Project.all
  # end

  def prepare_meta_tags(options={})
    site_name   = "Dillon Downey's website"
    title       = [controller_name, action_name].join(" ")
    description = "This website is a portfolio for showcasing my web development skills and personal endevours."
    image       = options[:image] || "../assets/images/Dillon-900x600.jpg"
    current_url = request.url

    defaults = {
      site:        site_name,
      title:       title,
      image:       image,
      description: description,
      keywords:    %w[web software development app junior  developer front-end back-end Full-stack ],
      twitter: {
        card: 'summary',
        site: '@downeydillon1',
        title: title,
        description: description,
        image: image
      },
     og: {
        url: current_url,
        site_name: site_name,
        title: title,
        image: image,
        description: description,
        type: 'website'
      }
    }
    options.reverse_merge!(defaults)
    set_meta_tags options
  end
end
