require 'rails_helper'

RSpec.describe "cnpjs/index", type: :view do
  before(:each) do
    assign(:cnpjs, [
      Cnpj.create!(),
      Cnpj.create!()
    ])
  end

  it "renders a list of cnpjs" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
