require 'rails_helper'

RSpec.describe "revisao_sistemas/edit", type: :view do
  let(:revisao_sistema) {
    RevisaoSistema.create!()
  }

  before(:each) do
    assign(:revisao_sistema, revisao_sistema)
  end

  it "renders the edit revisao_sistema form" do
    render

    assert_select "form[action=?][method=?]", revisao_sistema_path(revisao_sistema), "post" do
    end
  end
end
