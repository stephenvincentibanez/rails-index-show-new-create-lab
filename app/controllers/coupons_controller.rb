class CouponsController < ApplicationController
    before_action :find_coupon, only: :show

    def index
        @coupons = Coupon.all
    end

    def show
       
    end

    def new 
        @coupon = Coupon.new
    end

    def create
        @coupon = Coupon.create(coupon_params(:coupon_code, :store))
        redirect_to coupon_path(@coupon)
    end

    private 

    def find_coupon
        @coupon = Coupon.find(params[:id])
    end

    def coupon_params(*args)
        params.require(:coupon).permit(*args)
    end
    
end


