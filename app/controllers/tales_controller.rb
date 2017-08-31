class TalesController < ApplicationController
  def index
    @tales = Tale.all
  end

  def new
    @tale = Tale.new
  end

  def create
    @tale = Tale.create(tale_params)
    redirect_to tale_path(@tale)
  end

  def show
    @tale = Tale.find(params[:id])
  end

  def edit
    @tale = Tale.find(params[:id])
  end

  def update
    @tale = Tale.find(params[:id])
    @tale.update(tale_params)
    redirect_to tale_path(@tale)
  end

  def destroy
    @tale = Tale.find(params[:id])
    @tale.destroy
    redirect_to tales_path
  end

  private

  def tale_params
    params.require(:tale).permit(:name_1, :verb_1, :adj_1, :adv_1, :fam, :name_2, :number, :verb_2, :noun_1, :mil_rank, :adj_2, :adj_3, :adj_4, :noun_2, :award, :adj_5, :name_3, :verb_3, :noun_3, :verb_4, :adj_6, :verb_5, :verb_6, :emotion, :name_4)
  end
end
