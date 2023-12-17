class ArticlePolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    # user || !record.private
    return true unless record.private # record, es el @article en el show article controller
    return true if user # al final validamos que exists una sesion activa para ver el articulo

    return false
  end
end

# La gema pundit nos ayuda en la seguridad dentro de nuestra aplicación