require 'rails_helper'

RSpec.describe "pacientes/show", type: :view do
  before(:each) do
    assign(:paciente, Paciente.create!(
      pessoa: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
