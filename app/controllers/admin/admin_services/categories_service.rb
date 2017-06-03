class Admin::AdminServices::CategoriesService < BaseService

  def condition
    @q = Category.ransack(params[:q])
    @q
  end

  def item_list page, limit
    @q.result.page(page).per(limit)
  end

  def new_item
    Category.new
  end

  def create_item
    Category.create permit_params
  end

  def permit_params
    params.require(:category).permit Category::DEFAULT_ATTRIBUTES
  end
end
