require 'rails_helper'

RSpec.describe "cpfs/show", type: :view do
  before(:each) do
    assign(:cpf, Cpf.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
