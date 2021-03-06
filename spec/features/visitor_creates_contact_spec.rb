require "rails_helper"

feature "Contact creation" do
  scenario "allows acess to contacts page" do
    visit new_contacts_path

    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "allows a guest to create contact" do
    visit new_contacts_path
    fill_in :contact_email, with: 'aaa@aaa.com'
    fill_in :contact_message, with: 'Aaa aaa'

    click_button 'отправить'
    expect(page).to have_content 'Спасибо!'
  end

end