require 'rails_helper'

RSpec.describe "historia_doenca_atuals/index", type: :view do
  before(:each) do
    assign(:historia_doenca_atuals, [
      HistoriaDoencaAtual.create!(),
      HistoriaDoencaAtual.create!()
    ])
  end

  it "renders a list of historia_doenca_atuals" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
