require 'rails_helper'

RSpec.describe "pessoa/new", type: :view do
  before(:each) do
    assign(:pessoa, Pessoas.new())
  end

  it "renders new pessoa form" do
    render

    assert_select "form[action=?][method=?]", pessoas_path, "post" do
    end
  end
end
