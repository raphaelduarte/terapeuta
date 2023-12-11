require 'rails_helper'

RSpec.describe "historia_familiars/show", type: :view do
  before(:each) do
    assign(:historia_familiar, HistoriaFamiliar.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
