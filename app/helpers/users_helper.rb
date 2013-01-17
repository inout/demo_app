module UsersHelper
=begin
  def paid_leaves_remaining(user)
    leaves = user.leave
    paid_leaves_remaining = (leaves.last.nil?) ? 18 : leaves.last[:leaves_remaining]
  end
  
  def leaves_remaining_column(record)         
    record[:leaves_remaining] = paid_leaves_remaining record
  end
=end  
end