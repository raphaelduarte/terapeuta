require 'rails_helper'

RSpec.describe "enderecos/edit", type: :view do
  let(:endereco) {
    Endereco.create!(
      street: "MyString",
      number: 1,
      complement: "MyString",
      neigborhood: "MyString",
      city: "MyString",
      state: "MyString",
      c: "MyString"
    )
  }

  before(:each) do
    assign(:endereco, endereco)
  end

  it "renders the edit endereco form" do
    render

    assert_select "form[action=?][method=?]", endereco_path(endereco), "post" do

      assert_select "input[name=?]", "endereco[street]"

      assert_select "input[name=?]", "endereco[number]"

      assert_select "input[name=?]", "endereco[complement]"

      assert_select "input[name=?]", "endereco[neigborhood]"

      assert_select "input[name=?]", "endereco[city]"

      assert_select "input[name=?]", "endereco[state]"

      assert_select "input[name=?]", "endereco[c]"
    end
  end
end
