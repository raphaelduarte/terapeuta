require 'rails_helper'

RSpec.describe "cnpjs/new", type: :view do
  before(:each) do
    assign(:cnpj, Cnpj.new())
  end

  it "renders new cnpj form" do
    render

    assert_select "form[action=?][method=?]", cnpjs_path, "post" do
    end
  end
end
