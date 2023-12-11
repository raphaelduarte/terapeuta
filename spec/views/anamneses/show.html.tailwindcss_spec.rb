require 'rails_helper'

RSpec.describe "anamneses/show", type: :view do
  before(:each) do
    assign(:anamnese, Anamnese.create!(
      user: nil,
      paciente: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
