require 'rails_helper'

RSpec.describe "nome_completos/index", type: :view do
  before(:each) do
    assign(:nome_completos, [
      NomeCompleto.create!(),
      NomeCompleto.create!()
    ])
  end

  it "renders a list of nome_completos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
