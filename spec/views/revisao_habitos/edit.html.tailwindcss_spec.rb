require 'rails_helper'

RSpec.describe "revisao_habitos/edit", type: :view do
  let(:revisao_habito) {
    RevisaoHabito.create!()
  }

  before(:each) do
    assign(:revisao_habito, revisao_habito)
  end

  it "renders the edit revisao_habito form" do
    render

    assert_select "form[action=?][method=?]", revisao_habito_path(revisao_habito), "post" do
    end
  end
end
