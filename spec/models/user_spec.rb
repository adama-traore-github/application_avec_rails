require 'rails_helper'

# Tests pour le modèle User
RSpec.describe User, type: :model do
  # Test de validité avec des attributs valides
  it 'is valid with valid attributes' do
    user = build(:user)
    expect(user).to be_valid
  end

  # Test de non-validité sans email
  it 'is not valid without an email' do
    user = build(:user, email: nil)
    expect(user).to_not be_valid
  end

  # Test de non-validité sans numéro de téléphone
  it 'is not valid without a phone number' do
    user = build(:user, phone_number: nil)
    expect(user).to_not be_valid
  end

  # Test de non-validité sans description
  it 'is not valid without a description' do
    user = build(:user, description: nil)
    expect(user).to_not be_valid
  end
end
