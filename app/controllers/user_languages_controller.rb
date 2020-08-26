class UserLanguagesController < ApplicationController
  def new
    @languages = Language.all
    @user_language = UserLanguage.new
    authorize @user_language
  end

  def create
    current_user.user_languages.destroy_all
    language_params[:language_id].each do |id|
      @user_language = UserLanguage.new(user: current_user, language: Language.find(id.to_i))
      authorize @user_language
      unless @user_language.save!
        render :new
        return false
      end
    end

    redirect_to root_path
  end

  def edit
    @user_language = UserLanguage.find(params[:id])
    authorize @user_language
  end

  def update
  end

  private

  def language_params
    params.require(:user_language).permit(language_id: [])
  end
end
