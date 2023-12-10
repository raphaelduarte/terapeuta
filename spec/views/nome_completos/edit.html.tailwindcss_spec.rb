require 'rails_helper'

RSpec.describe "nome_completos/edit", type: :view do
  let(:nome_completo) {
    NomeCompleto.create!()
  }

  before(:each) do
    assign(:nome_completo, nome_completo)
  end

  it "renders the edit nome_completo form" do
    render

    assert_select "form[action=?][method=?]", nome_completo_path(nome_completo), "post" do
    end
  end
end
