require 'rails_helper'

RSpec.describe "historia_psicologica_psiquiatricas/edit", type: :view do
  let(:historia_psicologica_psiquiatrica) {
    HistoriaPsicologicaPsiquiatrica.create!()
  }

  before(:each) do
    assign(:historia_psicologica_psiquiatrica, historia_psicologica_psiquiatrica)
  end

  it "renders the edit historia_psicologica_psiquiatrica form" do
    render

    assert_select "form[action=?][method=?]", historia_psicologica_psiquiatrica_path(historia_psicologica_psiquiatrica), "post" do
    end
  end
end
