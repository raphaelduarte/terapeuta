require 'rails_helper'

RSpec.describe "enderecos/new", type: :view do
  before(:each) do
    assign(:endereco, Endereco.new(
      street: "MyString",
      number: 1,
      complement: "MyString",
      neigborhood: "MyString",
      city: "MyString",
      state: "MyString",
      c: "MyString"
    ))
  end

  it "renders new endereco form" do
    render

    assert_select "form[action=?][method=?]", enderecos_path, "post" do

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
