require 'rails_helper'

RSpec.describe "historia_sexual_reprodutivas/index", type: :view do
  before(:each) do
    assign(:historia_sexual_reprodutivas, [
      HistoriaSexualReprodutiva.create!(),
      HistoriaSexualReprodutiva.create!()
    ])
  end

  it "renders a list of historia_sexual_reprodutivas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
