require 'rails_helper'

RSpec.describe "anamneses/edit", type: :view do
  let(:anamnese) {
    Anamnese.create!(
      user: nil,
      paciente: nil
    )
  }

  before(:each) do
    assign(:anamnese, anamnese)
  end

  it "renders the edit anamnese form" do
    render

    assert_select "form[action=?][method=?]", anamnese_path(anamnese), "post" do

      assert_select "input[name=?]", "anamnese[user_id]"

      assert_select "input[name=?]", "anamnese[paciente_id]"
    end
  end
end
