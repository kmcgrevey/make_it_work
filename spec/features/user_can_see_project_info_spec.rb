require 'rails_helper'

RSpec.describe 'When I visit a project page', type: :feature do
  it 'I can see project info' do
    challenge1 = Challenge.create!(theme: 'Apartment Furnishings',
                                   project_budget: 1000)
    project1 = Project.create!(name: 'Litfit',
                               material: 'Lamp Shade',
                               challenge_id: challenge1.id)
    visit "/projects/:id"

    expect(page).to have_content(project1.name)
    expect(page).to have_content("Material: #{project1.material}")
    expect(page).to have_content("Challenge Theme: #{challenge1.theme}")

  end

end
