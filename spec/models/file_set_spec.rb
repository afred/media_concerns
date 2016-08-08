require 'rails_helper'

RSpec.describe FileSet do
  subject { described_class.new }

  describe '#i_can_haz_media_concernz?' do
    it 'returns true' do
      expect(subject.i_can_haz_media_concernz?).to eq true
    end
  end

  # describe '#height' do
  #   it 'returns the height' do
  #     expect(subject.height).to eq '100'
  #   end
  # end


  # These properties come from Hydra::Works::Characterization::VideoSchema
  #  property :height, predicate: RDF::Vocab::EBUCore.height
  #  property :width, predicate: RDF::Vocab::EBUCore.width
  #  property :frame_rate, predicate: RDF::Vocab::NFO.frameRate
  #  property :duration, predicate: RDF::Vocab::NFO.duration
  #  property :sample_rate, predicate: RDF::Vocab::EBUCore.sampleRate
end