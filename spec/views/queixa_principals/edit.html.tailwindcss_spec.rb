require 'rails_helper'

RSpec.describe "queixa_principals/edit", type: :view do
  let(:queixa_principal) {
    QueixaPrincipal.create!()
  }

  before(:each) do
    assign(:queixa_principal, queixa_principal)
  end

  it "renders the edit queixa_principal form" do
    render

    assert_select "form[action=?][method=?]", queixa_principal_path(queixa_principal), "post" do
    end
  end
end
