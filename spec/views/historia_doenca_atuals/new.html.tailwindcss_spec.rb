require 'rails_helper'

RSpec.describe "historia_doenca_atuals/new", type: :view do
  before(:each) do
    assign(:historia_doenca_atual, HistoriaDoencaAtual.new())
  end

  it "renders new historia_doenca_atual form" do
    render

    assert_select "form[action=?][method=?]", historia_doenca_atuals_path, "post" do
    end
  end
end
