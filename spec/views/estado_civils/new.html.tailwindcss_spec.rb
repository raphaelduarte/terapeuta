require 'rails_helper'

RSpec.describe "estado_civils/new", type: :view do
  before(:each) do
    assign(:estado_civil, EstadoCivil.new())
  end

  it "renders new estado_civil form" do
    render

    assert_select "form[action=?][method=?]", estado_civils_path, "post" do
    end
  end
end
