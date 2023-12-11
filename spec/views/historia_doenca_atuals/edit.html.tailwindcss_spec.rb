require 'rails_helper'

RSpec.describe "historia_doenca_atuals/edit", type: :view do
  let(:historia_doenca_atual) {
    HistoriaDoencaAtual.create!()
  }

  before(:each) do
    assign(:historia_doenca_atual, historia_doenca_atual)
  end

  it "renders the edit historia_doenca_atual form" do
    render

    assert_select "form[action=?][method=?]", historia_doenca_atual_path(historia_doenca_atual), "post" do
    end
  end
end
