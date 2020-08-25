class UserLanguagesController < ApplicationController
 def index
    @languages = Language.all
  end
end
