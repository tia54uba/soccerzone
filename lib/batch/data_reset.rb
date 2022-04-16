class Batch::DataReset
  def self.data_reset
    # 投稿を全て削除
    Post.where("created_at < ?", 30.days.ago.beginning_of_day).delete_all
    p "投稿を全て削除しました"
  end
end