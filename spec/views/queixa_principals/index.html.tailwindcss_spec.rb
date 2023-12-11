require 'rails_helper'

RSpec.describe "queixa_principals/index", type: :view do
  before(:each) do
    assign(:queixa_principals, [
      QueixaPrincipal.create!(),
      QueixaPrincipal.create!()
    ])
  end

  it "renders a list of queixa_principals" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
