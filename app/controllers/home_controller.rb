class HomeController < ApplicationController
  #skip_before_action :authenticate_user!, only: [:index]
  def index
    
    @associates = Associate.all
    
    @associatescount = @associates.count
    #@associatescount2 = @associates.joins(:positions).group(Position.arel_table[:pos_name]).count
    
    @pm_count = @associates.joins(:positions).where(:positions => { pos_name: 'PM'}).count
    @tc_count = @associates.joins(:positions).where(:positions => { pos_name: 'TC'}).count
    @dm_count = @associates.joins(:positions).where(:positions => { pos_name: 'DM'}).count
    
    @projects = Project.all
    @projectscount = @projects.count
    
    @prospect_count = @projects.where(status: 'Prospect').count
    @inprocess_count = @projects.where(status: 'In Process').count
    @complete_count = @projects.where(status: 'Complete').count
    
    
  end
end
