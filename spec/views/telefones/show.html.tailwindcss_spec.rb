require 'rails_helper'

RSpec.describe "telefones/show", type: :view do
  before(:each) do
    assign(:telefone, Telefone.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
