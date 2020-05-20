module ManyComplaintsHelper
  def choose_new_or_edit
    if action_name == 'new'|| action_name == 'create'
      confirm_many_complaints_path
    elsif action_name == 'edit'
      many_complaint_path
    end
  end
end
