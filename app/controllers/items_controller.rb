class ItemsController < ApplicationController
  def show  #アクション
    # Itemモデルのfindメソッドを使用して、パラメータの値に一致するidのデータを検索している
    # 取得したデータを@itemというインスタンス変数にセットする
    @item = Item.find(params[:id])  
  end
  def index
    @items = Item.all 
  end
  def new
    @item = Item.new
  end
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to @item
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    #@item = Item.find(params[:id])
    @item = Item.find(params[:id])
    #@item.update(item_params)
    @item.update(item_params)
    redirect_to @item
  end
  def destroy
    #destroy=削除
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end


  private

  # params.require(key).permit(filter)
  # key
  #   Strong Parameters を適用したい params の key を指定する。
  # filter
  #   Strong Parameters で許可するカラムを指定する。

  def item_params
    params.require(:item).permit(:name, :price, :seller, :description, :email, :image_url)
  end

end
