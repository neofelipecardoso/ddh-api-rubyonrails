class Character < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :aura, presence: true, inclusion: { in: [ "Emissao", "Elemental", "Controle de aura", "Vibracao", "Aprimoramento", "Telecinese" ] }
  has_many :aura_extras, dependent: :destroy
end
