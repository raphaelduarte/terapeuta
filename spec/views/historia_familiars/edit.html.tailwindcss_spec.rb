require 'rails_helper'

RSpec.describe "historia_familiars/edit", type: :view do
  let(:historia_familiar) {
    HistoriaFamiliar.create!()
  }

  before(:each) do
    assign(:historia_familiar, historia_familiar)
  end

  it "renders the edit historia_familiar form" do
    render

    assert_select "form[action=?][method=?]", historia_familiar_path(historia_familiar), "post" do
    end
  end
end
