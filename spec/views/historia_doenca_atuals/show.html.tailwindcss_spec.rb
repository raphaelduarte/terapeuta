require 'rails_helper'

RSpec.describe "historia_doenca_atuals/show", type: :view do
  before(:each) do
    assign(:historia_doenca_atual, HistoriaDoencaAtual.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
