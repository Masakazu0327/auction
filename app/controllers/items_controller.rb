class ItemsController < ApplicationController
  def show  #アクション
    # Itemモデルのfindメソッドを使用して、パラメータの値に一致するidのデータを検索している
    # 取得したデータを@itemというインスタンス変数にセットする
    @item = Item.find(params[:id])  
  end
  def index
    @items = Item.all 
  end
end
