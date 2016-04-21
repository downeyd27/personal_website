class StaticPagesController < ApplicationController
  def index
    @page_title = "Index"
    @description = "Find out more about me and projects I have been working on.  Open to junior web development opportunities."
    # prepare_meta_tags title: "Dillon Downey's Portfolio", description: "Find out more about me and projects I have been working on.  Open to junior web development opportunities."
  end
end
