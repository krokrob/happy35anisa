class GiftPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.email == 'anisa.caja@yahoo.com' || user.admin?
        scope.all
      else
        []
      end
    end
  end

  def new?
    true
  end

  def create?
    new?
  end

  def mine?
    new?
  end

  def show?
    record.user == user || user.admin?
  end

  def destroy?
    show?
  end
end
