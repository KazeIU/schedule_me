class LessonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    manager?
  end

  def create?
    manager?
  end

  def edit?
    manager?
  end

  def update?
    manager?
  end

  def destroy?
    manager?
  end

  private

  def manager?
    @user.role == "manager"
  end
end