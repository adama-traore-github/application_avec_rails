require 'rails_helper'

# Tests pour le modèle Reservation
RSpec.describe Reservation, type: :model do
  # Test de validité avec des attributs valides
  it 'is valid with valid attributes' do
    reservation = build(:reservation)
    expect(reservation).to be_valid
  end

  # Test de non-validité sans date de début
  it 'is not valid without a start date' do
    reservation = build(:reservation, start_date: nil)
    expect(reservation).to_not be_valid
  end

  # Test de non-validité sans date de fin
  it 'is not valid without an end date' do
    reservation = build(:reservation, end_date: nil)
    expect(reservation).to_not be_valid
  end

  # Test de non-validité si la date de fin est avant la date de début
  it 'is not valid if end date is before start date' do
    reservation = build(:reservation, start_date: Date.today, end_date: Date.yesterday)
    expect(reservation).to_not be_valid
  end
end
