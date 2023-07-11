# spec/views/home/home.html.erb_spec.rb
require 'rails_helper'

RSpec.describe 'home/index', type: :view do
  it 'renders the home template' do
    render

    expect(rendered).to have_selector('section.intro-screen') do |section|
      expect(section).to have_selector('.intro-screen-wrapper')
      expect(section).to have_selector('.intro-screen-title') do |title|
        expect(title).to have_selector('h1', text: 'Welcome to yogu finaces')
        expect(title).to have_selector('p', text: 'slogan')
      end
      expect(section).to have_selector('.intro-screen-links') do |links|
        expect(links).to have_link('Login In', href: new_user_session_path, class: 'btn btn-primary')
        expect(links).to have_link('Sign Up', href: new_user_registration_path, class: 'btn btn-primary')
      end
    end
  end
end
