require 'rails_helper'

RSpec.describe "data/edit", type: :view do
  let(:datum) {
    Datum.create!()
  }

  before(:each) do
    assign(:datum, datum)
  end

  it "renders the edit datum form" do
    render

    assert_select "form[action=?][method=?]", datum_path(datum), "post" do
    end
  end
end
