require 'rails_helper'

RSpec.describe "revisao_sistemas/show", type: :view do
  before(:each) do
    assign(:revisao_sistema, RevisaoSistema.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
