require 'rails_helper'

RSpec.describe "consulta/index", type: :view do
  before(:each) do
    assign(:consulta, [
      Consultum.create!(
        paciente: nil,
        user: nil,
        data: nil
      ),
      Consultum.create!(
        paciente: nil,
        user: nil,
        data: nil
      )
    ])
  end

  it "renders a list of consulta" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
