class AssignmentsController < ApplicationController
  def show
    family_members = Family.find(params[:id]).members

    assignments = family_members.map {|member| member.giftee_id ? Member.find(member.giftee_id).name : member.assign}
    render json: assignments
  end
end
