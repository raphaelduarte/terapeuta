require 'rails_helper'

RSpec.describe "queixa_principals/new", type: :view do
  before(:each) do
    assign(:queixa_principal, QueixaPrincipal.new())
  end

  it "renders new queixa_principal form" do
    render

    assert_select "form[action=?][method=?]", queixa_principals_path, "post" do
    end
  end
end
