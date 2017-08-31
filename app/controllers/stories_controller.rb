class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.create(story_params)
    redirect_to story_path(@story)
  end

  def show
    @story = Story.find(params[:id])
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    @story.update(story_params)
    redirect_to story_path(@story)
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to stories_path
  end

  private

  def story_params
    params.require(:story).permit(:adjective_1, :adjective_2, :noun_1, :noun_2, :plural_noun_1, :adverb_1, :verb_1, :adjective_3, :plural_noun_2, :adjective_4, :adjective_5, :adjective_6, :plural_noun_3, :name)
  end
end
