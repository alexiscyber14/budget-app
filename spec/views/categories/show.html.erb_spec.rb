require 'rails_helper'

RSpec.describe 'categories/show', type: :view do
  before(:each) do
    category = Category.create(id: 1, name: 'Category 1', icon: 'https://example.com/icon1.jpg')
    transactions = [
      Transaction.create(name: 'Transaction 1', amount: 10.00, category:),
      Transaction.create(name: 'Transaction 2', amount: 20.00, category:)
    ]
    oldest_transactions = [
      Transaction.create(name: 'Transaction 3', amount: 30.00, category:),
      Transaction.create(name: 'Transaction 4', amount: 40.00, category:)
    ]
    assign(:category, category)
    assign(:transactions, transactions)
    assign(:oldest_transactions, oldest_transactions)
    assign(:total_amount, category.total_amount)
  end

  it 'renders the show template' do
    render

    expect(rendered).to have_selector('.t-screen') do |t_screen|
      expect(t_screen).to have_link('Back', href: categories_path, class: 'btn')
      expect(t_screen).to have_selector('.window.active-window') do |active_window|
        expect(active_window).to have_selector('.t-item', count: 2)
        expect(active_window).to have_selector('.t-item', text: 'Transaction 1')
        expect(active_window).to have_selector('.t-item', text: 'Transaction 2')
      end
    end
  end
end
