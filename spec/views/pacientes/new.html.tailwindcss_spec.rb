require 'rails_helper'

RSpec.describe "pacientes/new", type: :view do
  before(:each) do
    assign(:paciente, Paciente.new(
      pessoa: nil,
      user: nil
    ))
  end

  it "renders new paciente form" do
    render

    assert_select "form[action=?][method=?]", pacientes_path, "post" do

      assert_select "input[name=?]", "paciente[pessoa_id]"

      assert_select "input[name=?]", "paciente[user_id]"
    end
  end
end
