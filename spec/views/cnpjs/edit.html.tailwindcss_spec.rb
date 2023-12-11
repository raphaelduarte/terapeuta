require 'rails_helper'

RSpec.describe "cnpjs/edit", type: :view do
  let(:cnpj) {
    Cnpj.create!()
  }

  before(:each) do
    assign(:cnpj, cnpj)
  end

  it "renders the edit cnpj form" do
    render

    assert_select "form[action=?][method=?]", cnpj_path(cnpj), "post" do
    end
  end
end
