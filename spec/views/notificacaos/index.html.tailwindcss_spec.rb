require 'rails_helper'

RSpec.describe "notificacaos/index", type: :view do
  before(:each) do
    assign(:notificacaos, [
      Notificacao.create!(
        aviso1hAntes: "Aviso1h Antes",
        aviso23hAntes: "Aviso23h Antes",
        avisoHorarioEspecifico: "Aviso Horario Especifico",
        consulta: nil
      ),
      Notificacao.create!(
        aviso1hAntes: "Aviso1h Antes",
        aviso23hAntes: "Aviso23h Antes",
        avisoHorarioEspecifico: "Aviso Horario Especifico",
        consulta: nil
      )
    ])
  end

  it "renders a list of notificacaos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Aviso1h Antes".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Aviso23h Antes".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Aviso Horario Especifico".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
