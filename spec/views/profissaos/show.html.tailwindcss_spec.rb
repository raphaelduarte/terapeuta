require 'rails_helper'

RSpec.describe "profissaos/show", type: :view do
  before(:each) do
    assign(:profissao, Profissao.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
