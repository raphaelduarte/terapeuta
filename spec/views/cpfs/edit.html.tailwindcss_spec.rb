require 'rails_helper'

RSpec.describe "cpfs/edit", type: :view do
  let(:cpf) {
    Cpf.create!()
  }

  before(:each) do
    assign(:cpf, cpf)
  end

  it "renders the edit cpf form" do
    render

    assert_select "form[action=?][method=?]", cpf_path(cpf), "post" do
    end
  end
end
