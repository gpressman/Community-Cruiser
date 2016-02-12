module EventsHelper
  def join_button
    button_to("Join Event", follow_path)
  end
end
