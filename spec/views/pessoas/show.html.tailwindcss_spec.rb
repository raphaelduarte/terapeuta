require 'rails_helper'

RSpec.describe "pessoa/show", type: :view do
  before(:each) do
    assign(:pessoa, Pessoas.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
