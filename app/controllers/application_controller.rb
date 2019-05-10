class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def favorite_text
        return @favorite_exists ? "Remover da lista de favoritos" : "Marcar como favorito"
    end
    helper_method :favorite_text
end
