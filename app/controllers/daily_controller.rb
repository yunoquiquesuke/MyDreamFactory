class DailyController < ApplicationController
  def index
    @d = Date.today
    @today_dreams = Dream.projects_due_by(@d)
    @tomorrow_dreams = Dream.projects_due_by(@d + 1)
    @two_days_after_tomorrow_dreams = Dream.projects_due_by(@d + 3)

    @today_yet_dreams = YetDream.yet_projects_due_by(@d)
    @tomorrow_yet_dreams = YetDream.yet_projects_due_by(@d + 1)
    @two_days_after_tomorrow_yet_dreams = YetDream.yet_projects_due_by(@d + 3)
  end

end
