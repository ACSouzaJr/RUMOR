require 'rails_helper'

RSpec.describe "lunches/show", type: :view do
  before(:each) do
    @lunch = assign(:lunch, Lunch.create!(
      :salad => "Salad",
      :sauce => "Sauce",
      :main_course => "Main Course",
      :garnish => "Garnish",
      :vegetarian_dish => "Vegetarian Dish",
      :accompaniments => "Accompaniments",
      :dessert => "Dessert",
      :juice => "Juice"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Salad/)
    expect(rendered).to match(/Sauce/)
    expect(rendered).to match(/Main Course/)
    expect(rendered).to match(/Garnish/)
    expect(rendered).to match(/Vegetarian Dish/)
    expect(rendered).to match(/Accompaniments/)
    expect(rendered).to match(/Dessert/)
    expect(rendered).to match(/Juice/)
  end
end
