require 'rails_helper'

RSpec.describe "revisao_habitos/show", type: :view do
  before(:each) do
    assign(:revisao_habito, RevisaoHabito.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
