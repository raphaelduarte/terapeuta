require 'rails_helper'

RSpec.describe "anamneses/new", type: :view do
  before(:each) do
    assign(:anamnese, Anamnese.new(
      user: nil,
      paciente: nil
    ))
  end

  it "renders new anamnese form" do
    render

    assert_select "form[action=?][method=?]", anamneses_path, "post" do

      assert_select "input[name=?]", "anamnese[user_id]"

      assert_select "input[name=?]", "anamnese[paciente_id]"
    end
  end
end
