require 'rails_helper'

RSpec.describe "pacientes/edit", type: :view do
  let(:paciente) {
    Paciente.create!(
      pessoa: nil,
      user: nil
    )
  }

  before(:each) do
    assign(:paciente, paciente)
  end

  it "renders the edit paciente form" do
    render

    assert_select "form[action=?][method=?]", paciente_path(paciente), "post" do

      assert_select "input[name=?]", "paciente[pessoa_id]"

      assert_select "input[name=?]", "paciente[user_id]"
    end
  end
end
