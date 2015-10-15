class Topics < ActiveRecord::Base


  def count
   render text:  Topic.count.to_s

  end

end
