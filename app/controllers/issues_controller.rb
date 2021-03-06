class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @issues = Issue.all
    respond_with(@issues)
  end

  def show
    respond_with(@issue)
  end

  def new
    @issue = Issue.new
    respond_with(@issue)
  end

  def edit
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.save
    respond_with(@issue)
  end

  def update
    @issue.update(issue_params)
    respond_with(@issue)
  end

  def destroy
    @issue.destroy
    respond_with(@issue)
  end

  private
    def set_issue
      @issue = Issue.find(params[:id])
    end

    def issue_params
      params.require(:issue).permit(:project_id, :tracker_id, :subject, :description, :status_id, :priority_id, :due_date, :author_id, :assigned_to_id)
    end
end
