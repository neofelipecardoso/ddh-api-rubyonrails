module Api
  module V1
    class CharactersController < ApplicationController
      def index
        render json: Character.all
      end

      def show
        character = Character.find(params[:id])
        render json: character
      end

      def create
        character = Character.new(character_params)
        character.hp = 20
        character.eneru = 20
        character.intuicao = 0
        character.vida_atual = 20
        character.eneru_atual = 20
        character.agilidade = 0
        character.nivel_de_despertar = 5

        if character.save
          render json: character, status: :created
        else
          render json: character.errors, status: :unprocessable_entity
        end
      end

      def update
        character = Character.find(params[:id])

        if character.update(character_params)
          render json: "Sucesso", status: :ok
        else
          render json: character.errors, status: :unprocessable_entity
        end
      end

      def destroy
        Character.find(params[:id]).destroy!

        head :no_content
      end



      # Aura extra endpoints


      # GET /characters/:id/aura_extras
      def aura_extras
        character = Character.find(params[:id])
        render json: character.aura_extras
      end

      # POST /characters/:id/aura_extras
      def create_aura_extra
        character = Character.find(params[:id])
        aura_extra = character.aura_extras.new(aura_extra_params)

        if aura_extra.save
          logger.debug "AuraExtra salva: #{aura_extra.inspect}"
          render json: aura_extra, status: :created
        else
          render json: aura_extra.errors, status: :unprocessable_entity
        end
      end

      private

      def character_params
        params.require(:character).permit(:name, :hp, :eneru, :intuicao, :aura, :pontos, :nivel_de_despertar, :vida_atual, :eneru_atual)
      end

      def aura_extra_params
        params.require(:aura_extra).permit(:name, :level)
      end
    end
  end
end
