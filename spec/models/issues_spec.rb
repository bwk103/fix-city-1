require 'rails_helper'

describe Issue, type: :model do

  it 'should have many tags' do
      should have_and_belong_to_many(:tags)
  end
  
  it 'should not allow missing title' do
    issue = Issue.new(title: "", description: "Needs fixing")
    expect(issue).not_to be_valid
  end

  it 'should not allow missing description' do
    issue = Issue.new(title: "Ramp broken", description: "")
    expect(issue).not_to be_valid
  end

  it 'should store location data in database' do
    issue = Issue.create(title: "Ramp broken", description: "This is a test description",
                      latitude: "51.50", longitude: "-0.118" )
    expect(Issue.first.latitude).to eq 51.50
    expect(Issue.first.longitude).to eq -0.118
  end
end
