class Admin::AdminServices::PostsService < BaseService

  def condition product_id
    product = Product.find(product_id)
    @q = product.posts.ransack(params[:q])
    @q
  end

  def item_list page, limit
    @q.result.page(page).per(limit)
  end

  def new_item
    Post.new
  end

  def create_item
    Post.create! title: params[:post][:title], content: params[:post][:content],
      product_id: params[:product_id]
  end

  def permit_params
    params.require(:post).permit Post::DEFAULT_ATTRIBUTES
  end
end
