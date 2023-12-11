require 'rails_helper'

RSpec.describe "consulta/edit", type: :view do
  let(:consultum) {
    Consultum.create!(
      paciente: nil,
      user: nil,
      data: nil
    )
  }

  before(:each) do
    assign(:consultum, consultum)
  end

  it "renders the edit consultum form" do
    render

    assert_select "form[action=?][method=?]", consultum_path(consultum), "post" do

      assert_select "input[name=?]", "consultum[paciente_id]"

      assert_select "input[name=?]", "consultum[user_id]"

      assert_select "input[name=?]", "consultum[data_id]"
    end
  end
end
