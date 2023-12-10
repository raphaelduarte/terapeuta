require 'rails_helper'

RSpec.describe "profissaos/edit", type: :view do
  let(:profissao) {
    Profissao.create!()
  }

  before(:each) do
    assign(:profissao, profissao)
  end

  it "renders the edit profissao form" do
    render

    assert_select "form[action=?][method=?]", profissao_path(profissao), "post" do
    end
  end
end
