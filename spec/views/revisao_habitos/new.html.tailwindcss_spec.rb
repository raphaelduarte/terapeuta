require 'rails_helper'

RSpec.describe "revisao_habitos/new", type: :view do
  before(:each) do
    assign(:revisao_habito, RevisaoHabito.new())
  end

  it "renders new revisao_habito form" do
    render

    assert_select "form[action=?][method=?]", revisao_habitos_path, "post" do
    end
  end
end
