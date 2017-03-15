require 'rails_helper'

describe "Viewing an individual event" do
  let(:event) { create :event }
  # let(:user) { create :user}

  it "shows the event's details" do
    visit event_url(event)

    expect(page).to have_text(event.description)
    expect(page).to have_text(event.location)
    # expect(page).to have_text(user.email)
    expect(page).to have_text(event.price)
    expect(page).to have_text(event.capacity)
  end
end
