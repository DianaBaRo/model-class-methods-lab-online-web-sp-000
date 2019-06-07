class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    joins(boats: :classifications).where(classifications: { name: 'Catamaran' })
  end

  def self.sailors

  end
end
