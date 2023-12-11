require 'rails_helper'

RSpec.describe "notificacaos/edit", type: :view do
  let(:notificacao) {
    Notificacao.create!(
      aviso1hAntes: "MyString",
      aviso23hAntes: "MyString",
      avisoHorarioEspecifico: "MyString",
      consulta: nil
    )
  }

  before(:each) do
    assign(:notificacao, notificacao)
  end

  it "renders the edit notificacao form" do
    render

    assert_select "form[action=?][method=?]", notificacao_path(notificacao), "post" do

      assert_select "input[name=?]", "notificacao[aviso1hAntes]"

      assert_select "input[name=?]", "notificacao[aviso23hAntes]"

      assert_select "input[name=?]", "notificacao[avisoHorarioEspecifico]"

      assert_select "input[name=?]", "notificacao[consulta_id]"
    end
  end
end
