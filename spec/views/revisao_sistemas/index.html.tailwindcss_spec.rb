require 'rails_helper'

RSpec.describe "revisao_sistemas/index", type: :view do
  before(:each) do
    assign(:revisao_sistemas, [
      RevisaoSistema.create!(),
      RevisaoSistema.create!()
    ])
  end

  it "renders a list of revisao_sistemas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
