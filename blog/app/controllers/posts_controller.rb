class PostsController < ApplicationController
  def index
    @posts = SuperAgent.retrieve_posts[:posts][:posts]
  end

  def show
    @post = SuperAgent.find_post(params[:id].to_i)[:post]
  end

  def new
    @authors = SuperAgent.retrieve_authors
  end
end
