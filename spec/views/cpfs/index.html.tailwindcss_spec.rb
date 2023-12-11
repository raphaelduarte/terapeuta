require 'rails_helper'

RSpec.describe "cpfs/index", type: :view do
  before(:each) do
    assign(:cpfs, [
      Cpf.create!(),
      Cpf.create!()
    ])
  end

  it "renders a list of cpfs" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
