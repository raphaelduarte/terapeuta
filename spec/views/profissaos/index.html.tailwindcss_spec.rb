require 'rails_helper'

RSpec.describe "profissaos/index", type: :view do
  before(:each) do
    assign(:profissaos, [
      Profissao.create!(),
      Profissao.create!()
    ])
  end

  it "renders a list of profissaos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
