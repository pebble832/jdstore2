class DesignsController < ApplicationController
  # before_action :authenticate_user! , only: [:create]
  #
  # def create
  #   @design = Design.new
  #   @design.user = current_user
  #
  #   if @design.save
  #     current_custom.custom_items.each do |custom_item|
  #       design_list = DesignList.new
  #       design_list.design = @design
  #       design_list.fitting_id = custom_item.fitting_id
  #       design_list.size = custom_item.size
  #       design_list.save
  #     end
  #     redirect_to design_path(@design)
  #   else
  #     render 'custom_boards'
  #   end
  # end
  #
  # def show
  #   @design = Design.find(params[:id])
  #   @design_lists = @design.design_lists
  # end

end