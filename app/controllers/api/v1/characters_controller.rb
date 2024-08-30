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

      private

      def character_params
        params.require(:character).permit(:name, :hp, :eneru, :intuicao, :aura, :pontos, :nivel_de_despertar, :vida_atual, :eneru_atual)
      end
    end
  end
end
