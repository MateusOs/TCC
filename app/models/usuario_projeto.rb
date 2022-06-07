class UsuarioProjeto < ApplicationRecord
  belongs_to :usuario
  belongs_to :projeto
end
