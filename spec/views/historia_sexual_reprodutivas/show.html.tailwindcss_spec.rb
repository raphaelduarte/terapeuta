require 'rails_helper'

RSpec.describe "historia_sexual_reprodutivas/show", type: :view do
  before(:each) do
    assign(:historia_sexual_reprodutiva, HistoriaSexualReprodutiva.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
