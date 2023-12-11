require 'rails_helper'

RSpec.describe "historia_psicologica_psiquiatricas/new", type: :view do
  before(:each) do
    assign(:historia_psicologica_psiquiatrica, HistoriaPsicologicaPsiquiatrica.new())
  end

  it "renders new historia_psicologica_psiquiatrica form" do
    render

    assert_select "form[action=?][method=?]", historia_psicologica_psiquiatricas_path, "post" do
    end
  end
end
