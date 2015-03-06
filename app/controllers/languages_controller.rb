class LanguagesController < ApplicationController

  def create
    language = Language.new(language_params)
    if language.save
      redirect_to languages_path
    else
      redirect_to new_languages_path
    end
  end

  def destroy
  end

  def index
    @languages = Language.all
  end

  def new
    @language = Language.new
  end

  def update
    @language = Language.find(params[:id])
    if @language.update(language_params)
      redirect_to languages_path
    else
      redirect_to edit_languages_path
    end
  end

  def edit
      @language = Language.find(params[:id])
  end

private

  def language_params
    params.require(:language).permit(:name, :skill_level)

  end


end
