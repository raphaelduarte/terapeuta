require 'rails_helper'

RSpec.describe "pessoa/index", type: :view do
  before(:each) do
    assign(:pessoas, [
      Pessoas.create!(),
      Pessoas.create!()
    ])
  end

  it "renders a list of pessoa" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
