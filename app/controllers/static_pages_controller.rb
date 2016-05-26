class StaticPagesController < ApplicationController
  def index
    @projects = Project.all
    @description = "Find out more about me and projects I have been working on.
    Open to junior web development opportunities."
  end

  def fun_page
    @description = "A playground page for displaying mini components of stuff
    I am learning about."
  end
end
