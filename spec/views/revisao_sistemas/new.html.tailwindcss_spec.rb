require 'rails_helper'

RSpec.describe "revisao_sistemas/new", type: :view do
  before(:each) do
    assign(:revisao_sistema, RevisaoSistema.new())
  end

  it "renders new revisao_sistema form" do
    render

    assert_select "form[action=?][method=?]", revisao_sistemas_path, "post" do
    end
  end
end
