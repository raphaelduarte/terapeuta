require 'rails_helper'

RSpec.describe "notificacaos/show", type: :view do
  before(:each) do
    assign(:notificacao, Notificacao.create!(
      aviso1hAntes: "Aviso1h Antes",
      aviso23hAntes: "Aviso23h Antes",
      avisoHorarioEspecifico: "Aviso Horario Especifico",
      consulta: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Aviso1h Antes/)
    expect(rendered).to match(/Aviso23h Antes/)
    expect(rendered).to match(/Aviso Horario Especifico/)
    expect(rendered).to match(//)
  end
end
