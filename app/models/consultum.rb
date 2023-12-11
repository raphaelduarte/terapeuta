class Consultum < ApplicationRecord
  belongs_to :paciente
  belongs_to :user
  belongs_to :data

  after_create :criarOuPegar_notificacao

  has_one :notificacao

  private

  def criarOuPegar_notificacao
    if self.notificacao.present?
      puts 'Notificação já criada'
    else
      Notificacao.create(consulta_id: self.id,
                         aviso1hAntes: 'Sua consulta é daqui a 1 hora!',
                         aviso23hAntes: 'Sua consulta é daqui a 23 horas, marque na sua agenda e coloque no despertador o horário da sua consulta para que você não esqueça',
                         avisoHorarioEspecifico: 'Sua consulta é hoje, coloque no despertador o horário da sua consulta para que você não esqueça')
    end
  end
end
