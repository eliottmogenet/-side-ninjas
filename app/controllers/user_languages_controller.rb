class UserLanguagesController < ApplicationController

  def index
    @user_languages = policy_scope(UserLanguage)
    @user_languages = current_user.user_languages

    @all_user_languages_with_a_level = @user_languages.all? { |user_language| user_language.level.present? }
  end

  def new
    @languages = Language.all
    @user_language = UserLanguage.new
    authorize @user_language

  end

  def create
    # raise
    current_user.user_languages.destroy_all
    if params["user_language"].present?
      language_params[:language_id].each do |id|
        @user_language = UserLanguage.new(user: current_user, language: Language.find(id.to_i))
        authorize @user_language
        unless @user_language.save!
          render :new
          return false
        end
      end
      redirect_to user_languages_path
    else
      @languages = Language.all
      @user_language = UserLanguage.new
      authorize @user_language
      render :new
    end
  end

  def edit
    @user_language = UserLanguage.find(params[:id])
    authorize @user_language
  end

  def update
    # TODO
    @user_language = UserLanguage.find(params[:id])
    authorize @user_language
    @user_language.level = params["user_language"]["level"]
    @user_language.update(language_params)

    redirect_to user_languages_path
  end

  private

  def language_params
    params.require(:user_language).permit( :level, language_id: [])
  end
end
