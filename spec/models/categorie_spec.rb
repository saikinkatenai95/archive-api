require 'rails_helper'

RSpec.describe Categorie, type: :model do
  before do
    @categorie = FactoryBot.build(:categorie)
  end

  describe 'カテゴリー新規登録' do
    context '新規登録できるとき'do
      it 'nameが存在かつ重複していなければ登録できる' do
        expect(@categorie).to be_valid
      end
    end
    
    context '新規登録できないとき'do
      it 'nameが空では登録できない' do
        @categorie.name = ''
        @categorie.valid?
        expect(@categorie.errors.full_messages).to include("Name can't be blank")
      end
      it '重複したnameが存在する場合は登録できない' do
        @categorie.save
        another_name = FactoryBot.build(:categorie)
        another_name.name = @categorie.name
        another_name.valid?
        expect(another_name.errors.full_messages).to include("Name has already been taken")
      end
    end
  end
end
