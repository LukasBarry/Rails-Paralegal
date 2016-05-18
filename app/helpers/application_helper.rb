module ApplicationHelper
  def buyer_check
     if @buyer.present?
       @form_finished = true
       eval("link_to 'Show Borrower', buyer_path(@buyer.id)")
     else
       eval("link_to 'New Borrower', new_buyer_path")
   end
 end
 def link_check(item)
   if eval("@buyer.#{item}").present?
     eval("link_to 'Show #{item.titleize.gsub('_', ' ')}', buyer_#{item}_path(@buyer.id, @buyer.#{item})")
   else
     @form_finished = false
     eval("link_to 'New #{item.titleize.gsub('_', ' ')}', new_buyer_#{item}_path(@buyer.id)")
   end
  end
  def overview_check
    if @form_finished
      eval("link_to 'Overview', buyer_overview_index_path(@buyer.id)")
    end
  end
end
