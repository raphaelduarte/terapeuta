require 'rails_helper'

RSpec.describe "nome_completos/show", type: :view do
  before(:each) do
    assign(:nome_completo, NomeCompleto.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
