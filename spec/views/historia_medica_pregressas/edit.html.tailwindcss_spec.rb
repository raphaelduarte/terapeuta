require 'rails_helper'

RSpec.describe "historia_medica_pregressas/edit", type: :view do
  let(:historia_medica_pregressa) {
    HistoriaMedicaPregressa.create!()
  }

  before(:each) do
    assign(:historia_medica_pregressa, historia_medica_pregressa)
  end

  it "renders the edit historia_medica_pregressa form" do
    render

    assert_select "form[action=?][method=?]", historia_medica_pregressa_path(historia_medica_pregressa), "post" do
    end
  end
end
