require 'rails_helper'

RSpec.describe "nome_completos/new", type: :view do
  before(:each) do
    assign(:nome_completo, NomeCompleto.new())
  end

  it "renders new nome_completo form" do
    render

    assert_select "form[action=?][method=?]", nome_completos_path, "post" do
    end
  end
end
