require 'rails_helper'

RSpec.describe "profissaos/new", type: :view do
  before(:each) do
    assign(:profissao, Profissao.new())
  end

  it "renders new profissao form" do
    render

    assert_select "form[action=?][method=?]", profissaos_path, "post" do
    end
  end
end
