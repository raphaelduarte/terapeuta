require 'rails_helper'

RSpec.describe "pessoa/edit", type: :view do
  let(:pessoa) {
    Pessoas.create!()
  }

  before(:each) do
    assign(:pessoa, pessoa)
  end

  it "renders the edit pessoa form" do
    render

    assert_select "form[action=?][method=?]", pessoa_path(pessoa), "post" do
    end
  end
end
