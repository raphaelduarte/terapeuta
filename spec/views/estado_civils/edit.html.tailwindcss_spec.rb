require 'rails_helper'

RSpec.describe "estado_civils/edit", type: :view do
  let(:estado_civil) {
    EstadoCivil.create!()
  }

  before(:each) do
    assign(:estado_civil, estado_civil)
  end

  it "renders the edit estado_civil form" do
    render

    assert_select "form[action=?][method=?]", estado_civil_path(estado_civil), "post" do
    end
  end
end
