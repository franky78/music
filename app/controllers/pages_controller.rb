class PagesController < ApplicationController
  def home
        @resumes = Resume.all

  end

  def about
  end
end
