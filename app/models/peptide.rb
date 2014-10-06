class Peptide < ActiveRecord::Base
  attr_accessible :aseq, :mod_loc

  has_many :datalines

  validates_presence_of :aseq
  validates_presence_of :mod_loc

  validates :aseq, length: {in: 3..255}

  validate :aseq_does_not_contain_lowercase

  private

  def aseq_does_not_contain_lowercase
    aseq == aseq.upcase
  end

end
