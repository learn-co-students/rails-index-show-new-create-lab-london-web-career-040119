class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    data = params[:coupon]
    @coupon = Coupon.new(coupon_code: data[:coupon_code], store: data[:store])
    if @coupon.save
      flash[:success] = 'Coupon successfully created'
      redirect_to @coupon
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end
end
