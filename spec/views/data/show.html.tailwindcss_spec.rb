require 'rails_helper'

RSpec.describe "data/show", type: :view do
  before(:each) do
    assign(:datum, Datum.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
