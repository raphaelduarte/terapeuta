require 'rails_helper'

RSpec.describe "enderecos/show", type: :view do
  before(:each) do
    assign(:endereco, Endereco.create!(
      street: "Street",
      number: 2,
      complement: "Complement",
      neigborhood: "Neigborhood",
      city: "City",
      state: "State",
      c: "C"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Complement/)
    expect(rendered).to match(/Neigborhood/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/C/)
  end
end
