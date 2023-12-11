require 'rails_helper'

RSpec.describe "cpfs/new", type: :view do
  before(:each) do
    assign(:cpf, Cpf.new())
  end

  it "renders new cpf form" do
    render

    assert_select "form[action=?][method=?]", cpfs_path, "post" do
    end
  end
end
