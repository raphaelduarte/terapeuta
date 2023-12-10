require 'rails_helper'

RSpec.describe "estado_civils/index", type: :view do
  before(:each) do
    assign(:estado_civils, [
      EstadoCivil.create!(),
      EstadoCivil.create!()
    ])
  end

  it "renders a list of estado_civils" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
