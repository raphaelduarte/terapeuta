require 'rails_helper'

RSpec.describe "historia_familiars/index", type: :view do
  before(:each) do
    assign(:historia_familiars, [
      HistoriaFamiliar.create!(),
      HistoriaFamiliar.create!()
    ])
  end

  it "renders a list of historia_familiars" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
