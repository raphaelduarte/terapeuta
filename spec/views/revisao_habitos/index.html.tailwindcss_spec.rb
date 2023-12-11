require 'rails_helper'

RSpec.describe "revisao_habitos/index", type: :view do
  before(:each) do
    assign(:revisao_habitos, [
      RevisaoHabito.create!(),
      RevisaoHabito.create!()
    ])
  end

  it "renders a list of revisao_habitos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
