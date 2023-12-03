require 'rails_helper'

RSpec.describe "enderecos/index", type: :view do
  before(:each) do
    assign(:enderecos, [
      Endereco.create!(
        street: "Street",
        number: 2,
        complement: "Complement",
        neigborhood: "Neigborhood",
        city: "City",
        state: "State",
        c: "C"
      ),
      Endereco.create!(
        street: "Street",
        number: 2,
        complement: "Complement",
        neigborhood: "Neigborhood",
        city: "City",
        state: "State",
        c: "C"
      )
    ])
  end

  it "renders a list of enderecos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Street".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Complement".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Neigborhood".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("C".to_s), count: 2
  end
end
