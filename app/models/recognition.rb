class Recognition < ApplicationRecord
  # Ha de ser en minuscula, cada recognition se deriva de un unico usuario
  belongs_to :user
  # Igual a lo anterior cada recognition deriva de una emotion
  belongs_to :emotion
end
