require_relative '../corrector'

describe Corrector do
  context 'When passing a name' do
    corrector = Corrector.new
    it 'should return first letter capital' do
      expect(corrector.correct_name('dire')).to eq 'Dire'
    end

    it 'should return first 10 letter with first capital letter' do
      expect(corrector.correct_name('direakombe')).to eq 'Direakombe'
    end
  end
end
