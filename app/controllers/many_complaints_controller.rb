class ManyComplaintsController < ApplicationController
  before_action :set_manycomplaint, only: [:show, :edit, :update, :destroy]
  def index
    @manycomplaints = ManyComplaint.all
  end

  def new
    @manycomplaint = ManyComplaint.new
  end

  def create
    @manycomplaint = ManyComplaint.new(manycomplaint_params)
    if @manycomplaint.save
      redirect_to many_complaints_path, notice: "新規投稿作成"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @manycomplaint.update(manycomplaint_params)
      redirect_to many_complaints_path, notice: "編集できました"
    else
      render :edit
    end
  end

  def destroy
    @manycomplaint.destroy
    redirect_to many_complaints_path, notice:"ブログを削除しました"
  end

  def top
  end

  def confirm
    @manycomplaint = ManyComplaint.new(manycomplaint_params)
    render :new if @manycomplaint.invalid?
  end

  private
  def manycomplaint_params
    params.require(:many_complaint).permit(:content)
  end

  def set_manycomplaint
    @manycomplaint = ManyComplaint.find(params[:id])
  end

end
