require 'rails_helper'

RSpec.describe "historia_familiars/new", type: :view do
  before(:each) do
    assign(:historia_familiar, HistoriaFamiliar.new())
  end

  it "renders new historia_familiar form" do
    render

    assert_select "form[action=?][method=?]", historia_familiars_path, "post" do
    end
  end
end
