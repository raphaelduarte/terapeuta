require 'rails_helper'

RSpec.describe "historia_medica_pregressas/new", type: :view do
  before(:each) do
    assign(:historia_medica_pregressa, HistoriaMedicaPregressa.new())
  end

  it "renders new historia_medica_pregressa form" do
    render

    assert_select "form[action=?][method=?]", historia_medica_pregressas_path, "post" do
    end
  end
end
