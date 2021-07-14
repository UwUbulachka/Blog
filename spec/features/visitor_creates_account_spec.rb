require "rails_helper"

feature "Account Creation" do
  scenario "allows guest to create account" do
    visit new_user_registration_path

    fill_in :user_username, with: 'Sasha'
    fill_in :user_email, with: 'aaa@aaa.com'
    fill_in :user_password, with: '1111111'
    fill_in :user_password_confirmation, with: '1111111'

    click_button 'Sign up'
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end