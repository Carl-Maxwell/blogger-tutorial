class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.find(params[:id])
    title = @tag.name
    @tag.destroy

    flash.notice = "You have spilt the blood of #{title} you old rascal you."

    redirect_to tags_path
  end
end
