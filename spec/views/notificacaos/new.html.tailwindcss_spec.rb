require 'rails_helper'

RSpec.describe "notificacaos/new", type: :view do
  before(:each) do
    assign(:notificacao, Notificacao.new(
      aviso1hAntes: "MyString",
      aviso23hAntes: "MyString",
      avisoHorarioEspecifico: "MyString",
      consulta: nil
    ))
  end

  it "renders new notificacao form" do
    render

    assert_select "form[action=?][method=?]", notificacaos_path, "post" do

      assert_select "input[name=?]", "notificacao[aviso1hAntes]"

      assert_select "input[name=?]", "notificacao[aviso23hAntes]"

      assert_select "input[name=?]", "notificacao[avisoHorarioEspecifico]"

      assert_select "input[name=?]", "notificacao[consulta_id]"
    end
  end
end
