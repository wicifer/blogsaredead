class AllArticleToUser1 < ActiveRecord::Migration[6.1]
  def change
    Article.update_all(user_id: 1) 
  end
end
