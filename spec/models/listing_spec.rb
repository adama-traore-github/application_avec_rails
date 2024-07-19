require 'rails_helper'

RSpec.describe Listing, type: :model do
  # Création d'un utilisateur fictif pour les tests
  let(:user) { create(:user) }

  # Création d'une ville fictive pour les tests
  let(:city) { create(:city) }

  # Création d'une annonce fictive associée à l'utilisateur et la ville créés
  let(:listing) { create(:listing, user: user, city: city) }

  describe '#overlapping_reservation?' do
    # Test pour vérifier que la méthode retourne vrai si une réservation chevauche la datetime donnée
    it 'returns true if a reservation overlaps with the given datetime' do
    end

    # Test pour vérifier que la méthode retourne faux si aucune réservation ne chevauche la datetime donnée
    it 'returns false if no reservation overlaps with the given datetime' do
    end
  end
end
