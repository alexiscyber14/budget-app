require 'rails_helper'

RSpec.describe 'categories/index', type: :view do
  before(:each) do
    assign(:categories, [
             Category.create(id: 1, name: 'Category 1', icon: 'https://example.com/icon1.jpg'),
             Category.create(id: 2, name: 'Category 2', icon: 'https://example.com/icon2.jpg')
           ])
  end

  it 'renders a list of categories' do
    render
    expect(rendered).to have_selector('section.cat-screen') do |section|
      expect(section).to have_selector('div.cat-item', count: 2)

      within section do
        expect(rendered).to have_selector('div.cat-item', text: 'Category 1') do |item|
          expect(item).to have_selector('h2', text: 'Category 1')
          expect(item).to have_selector('p', text: 'Total Amount: $0.00') # Adjust the expected value if necessary
        end

        expect(rendered).to have_selector('div.cat-item', text: 'Category 2') do |item|
          expect(item).to have_selector('h2', text: 'Category 2')
          expect(item).to have_selector('p', text: 'Total Amount: $0.00') # Adjust the expected value if necessary
        end
      end
    end

    expect(rendered).to have_selector('div.add-cat-btn') do |btn|
      expect(btn).to have_link('Add category', href: new_category_path, class: 'btn')
    end
  end
end
