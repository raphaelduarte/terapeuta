require 'rails_helper'

RSpec.describe "consulta/new", type: :view do
  before(:each) do
    assign(:consultum, Consultum.new(
      paciente: nil,
      user: nil,
      data: nil
    ))
  end

  it "renders new consultum form" do
    render

    assert_select "form[action=?][method=?]", consulta_path, "post" do

      assert_select "input[name=?]", "consultum[paciente_id]"

      assert_select "input[name=?]", "consultum[user_id]"

      assert_select "input[name=?]", "consultum[data_id]"
    end
  end
end
