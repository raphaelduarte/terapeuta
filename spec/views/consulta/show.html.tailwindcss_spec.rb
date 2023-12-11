require 'rails_helper'

RSpec.describe "consulta/show", type: :view do
  before(:each) do
    assign(:consultum, Consultum.create!(
      paciente: nil,
      user: nil,
      data: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
