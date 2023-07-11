# spec/views/categories/new.html.erb_spec.rb
require 'rails_helper'

RSpec.describe 'categories/new', type: :view do
  before(:each) do
    assign(:category, Category.new)
  end

  it 'renders the new template' do
    render

    expect(rendered).to have_selector('section.ad-cat-screen') do |section|
      expect(section).to have_selector("form[action='#{categories_path}'][method='post']") do |form|
        expect(form).to have_selector('div.field', count: 2)

        expect(rendered).to have_field('category[name]')
        expect(rendered).to have_field('category[icon]')

        expect(rendered).to have_selector('div.actions') do |actions|
          expect(actions).to have_button('Save')
        end
      end

      expect(rendered).to have_link('Back', href: categories_path, class: 'btn')
    end
  end

  context 'when category has errors' do
    before(:each) do
      category = Category.new
      category.errors.add(:name, 'cannot be blank')
      category.errors.add(:icon, 'cannot be blank')

      assign(:category, category)
    end

    it 'displays error messages' do
      render

      expect(rendered).to have_selector('#error_explanation') do |error_explanation|
        expect(error_explanation).to have_selector('h2', text: '2 errors prohibited this category from being saved:')
        expect(error_explanation).to have_selector('li', count: 2)
      end
    end
  end
end
