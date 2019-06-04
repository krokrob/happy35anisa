class GiftPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.email == 'anisa.caja@yahoo.com'
        scope.all
      else
        []
      end
    end
  end

  def new?
    user.gifts.empty?
  end

  def create?
    new?
  end

  def show?
    record.user == user
  end
end
