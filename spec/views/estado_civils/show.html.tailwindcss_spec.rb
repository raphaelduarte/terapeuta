require 'rails_helper'

RSpec.describe "estado_civils/show", type: :view do
  before(:each) do
    assign(:estado_civil, EstadoCivil.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
