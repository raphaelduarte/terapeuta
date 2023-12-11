require 'rails_helper'

RSpec.describe "historia_medica_pregressas/show", type: :view do
  before(:each) do
    assign(:historia_medica_pregressa, HistoriaMedicaPregressa.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
