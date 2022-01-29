require 'rails_helper'

RSpec.describe Categorie, type: :model do
  before do
    @categorie = FactoryBot.build(:categorie)
  end

  describe 'カテゴリー新規登録' do
    it 'nameが空では登録できない' do
      @categorie.name = ''
      @categorie.valid?
      expect(@categorie.errors.full_messages).to include("Name can't be blank")
    end
  end
end
