require 'rails_helper'

RSpec.describe "historia_sexual_reprodutivas/new", type: :view do
  before(:each) do
    assign(:historia_sexual_reprodutiva, HistoriaSexualReprodutiva.new())
  end

  it "renders new historia_sexual_reprodutiva form" do
    render

    assert_select "form[action=?][method=?]", historia_sexual_reprodutivas_path, "post" do
    end
  end
end
