module ManyComplaintsHelper
  def choose_new_or_edit
    if action_name == 'new'
      confirm_many_complaints_path
    elsif action_name == 'edit'
      many_complaints_path
    end
  end
end
