require 'rails_helper'

RSpec.describe "historia_sexual_reprodutivas/edit", type: :view do
  let(:historia_sexual_reprodutiva) {
    HistoriaSexualReprodutiva.create!()
  }

  before(:each) do
    assign(:historia_sexual_reprodutiva, historia_sexual_reprodutiva)
  end

  it "renders the edit historia_sexual_reprodutiva form" do
    render

    assert_select "form[action=?][method=?]", historia_sexual_reprodutiva_path(historia_sexual_reprodutiva), "post" do
    end
  end
end
