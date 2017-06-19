class Admin::PostsController < AdminController
  before_action :load_service
  before_action :set_item, only: [:update, :destroy]

  def index
    @q = @service.condition(params[:product_id])
    @posts = @service.item_list(params[:page], @limit)
    @post = @service.new_item
  end

  def create
    @service.create_item
    redirect_to :back
  end

  def update
    @post.update @service.permit_params
    redirect_to :back
  end

  def destroy
    @post.destroy
    redirect_to :back
  end

  private

  def set_item
    @post = Post.find(params[:id])
  end

  def load_service
    @service = Admin::AdminServices::PostsService.new(params, nil)
  end
end
