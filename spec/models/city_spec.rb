require 'rails_helper'

# Tests pour le modèle City
RSpec.describe City, type: :model do
  # Test de validité avec des attributs valides
  it 'is valid with valid attributes' do
    city = build(:city)
    expect(city).to be_valid
  end

  # Test de non-validité sans nom
  it 'is not valid without a name' do
    city = build(:city, name: nil)
    expect(city).to_not be_valid
  end

  # Test de non-validité sans code postal
  it 'is not valid without a zip code' do
    city = build(:city, zip_code: nil)
    expect(city).to_not be_valid
  end
end
