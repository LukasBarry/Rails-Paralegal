module ApplicationHelper
  def buyer_check
     if @buyer.present?
       eval("link_to 'Edit Borrower', edit_buyer_path(@buyer.id)")
     else
       eval("link_to 'New Borrower', new_buyer_path")
   end
 end
 def link_check(item)
   if eval("@buyer.#{item}").present?
     eval("link_to 'Edit #{item.titleize.gsub('_', ' ')}', edit_buyer_#{item}_path(@buyer.id, @buyer.#{item})")
   else
     eval("link_to 'New #{item.titleize.gsub('_', ' ')}', new_buyer_#{item}_path(@buyer.id)")
   end
  end
end
