require 'rails_helper'

RSpec.describe "historia_psicologica_psiquiatricas/show", type: :view do
  before(:each) do
    assign(:historia_psicologica_psiquiatrica, HistoriaPsicologicaPsiquiatrica.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
