class Member < ApplicationRecord
  belongs_to :family
  scope :not_in_family, -> (family_id) {where.not('family_id = ?', family_id)}
  scope :unassigned, -> {where('assigned = false')}

  def assign
    giftee = self.class.not_in_family(self.family_id).unassigned.shuffle.first
    self.update(giftee_id: giftee.id)
    giftee.update(assigned: true)
    return giftee.name
  end
end
