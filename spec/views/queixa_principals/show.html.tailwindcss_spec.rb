require 'rails_helper'

RSpec.describe "queixa_principals/show", type: :view do
  before(:each) do
    assign(:queixa_principal, QueixaPrincipal.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
