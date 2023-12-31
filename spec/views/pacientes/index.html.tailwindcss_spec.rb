require 'rails_helper'

RSpec.describe "pacientes/index", type: :view do
  before(:each) do
    assign(:pacientes, [
      Paciente.create!(
        pessoa: nil,
        user: nil
      ),
      Paciente.create!(
        pessoa: nil,
        user: nil
      )
    ])
  end

  it "renders a list of pacientes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
