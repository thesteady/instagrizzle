require 'spec_helper'

# describe OurOneFeature do
  describe 'a random user visits the home page' do
    it 'should have a field for a user name' do
      visit root_path
      expect(page).to have_field('username')
    end

    it 'should have a button to show picture' do
      visit root_path
      expect(page).to have_button("Get")
    end

    context 'when the user fills in the field properly and clicks the button' do

      it "shows the most recent photo for that user" do
        visit root_path
        fill_in :username, with: "blairand"
        click_on "Get"

        expect(page).to have_content "instagram_image_1"
      end
    end
  end
# end
