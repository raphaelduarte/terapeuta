require 'rails_helper'

RSpec.describe "telefones/new", type: :view do
  before(:each) do
    assign(:telefone, Telefone.new())
  end

  it "renders new telefone form" do
    render

    assert_select "form[action=?][method=?]", telefones_path, "post" do
    end
  end
end
