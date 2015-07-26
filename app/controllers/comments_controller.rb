class CommentsController < ApplicationController
  before_filter :require_login, except: [:create]
  include CommentsHelper
  def create
    #fail
    @comment = Comment.new( comment_params )
    @comment.article_id = params[:article_id]

    @comment.save

    redirect_to article_path(@comment.article)
    # why is it the same to 
    # redirect_to article_path(@comment.article_id)
  end
end
