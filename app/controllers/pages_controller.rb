class PagesController < ApplicationController
  
  before_filter :approve_admin_member?, only: [:members]
  before_filter :authenticate_member!, except: [:home]

  def home
  end

  def dashboard
  	@post = Post.new
  	@posts = Post.order("publish_on desc").where('publish_on <= ?', Date.today)
    @upcoming_events = Event.order('date asc').where('date >= ? OR tournament_start_date >= ?', Date.today, Date.today)	
  end

  def calendar
    @event = Event.new
    @events = Event.order('date asc').where('date >= ? OR tournament_start_date >= ?', Time.now, Time.now)
  end

  def roster
    @profile = Profile.new
    @profiles = Profile.order('player_number asc')

  end

  def media

  end

  def members
    @members_list = Member.all
  end

  protected

  def approve_admin_member?
    unless current_member.admin?
      redirect_to dashboard_path
    end
  end
  
end
