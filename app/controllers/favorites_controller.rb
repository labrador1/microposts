class FavoritesController < ApplicationController
   
	 
	   def create
	     @micropost    = Micropost.find(params[:micropost_id])
	     @favorite = current_user.favorites.build(micropost: @micropost)
	 
	     if @favorite.save
	       redirect_to microposts_url, notice: "お気に入りに登録しました"
	     else
	       redirect_to microposts_url, alert: "この投稿はお気に入りに登録できません"
	     end
	   end
	   
	   def destroy
	     @favorite = current_user.favorites.find_by!(micropost_id: params[:micropost_id])
	     @favorite.destroy
	     redirect_to microposts_url, notice: "お気に入りを解除しました"
	   end
 end
