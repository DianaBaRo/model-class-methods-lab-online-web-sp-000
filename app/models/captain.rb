class Captain < ActiveRecord::Base
  has_many :boats

  def catamaran_operators
    joins(boats: :classifications).where(classifications: { name: 'Catamaran' })
  end
end
