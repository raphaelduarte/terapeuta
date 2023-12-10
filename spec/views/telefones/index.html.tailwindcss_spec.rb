require 'rails_helper'

RSpec.describe "telefones/index", type: :view do
  before(:each) do
    assign(:telefones, [
      Telefone.create!(),
      Telefone.create!()
    ])
  end

  it "renders a list of telefones" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
