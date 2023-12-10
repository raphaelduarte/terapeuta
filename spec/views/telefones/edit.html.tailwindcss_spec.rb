require 'rails_helper'

RSpec.describe "telefones/edit", type: :view do
  let(:telefone) {
    Telefone.create!()
  }

  before(:each) do
    assign(:telefone, telefone)
  end

  it "renders the edit telefone form" do
    render

    assert_select "form[action=?][method=?]", telefone_path(telefone), "post" do
    end
  end
end
