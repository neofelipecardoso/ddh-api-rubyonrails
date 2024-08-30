class AuraExtra < ApplicationRecord
  belongs_to :character
  validates :name, presence: true, inclusion: { in: [ "Emissao", "Elemental", "Controle de aura", "Vibracao", "Aprimoramento", "Telecinese" ] }
  validates :level, presence: true
end
