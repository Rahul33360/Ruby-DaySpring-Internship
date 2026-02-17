class OrdersController < ApplicationController

    def index
        # raise params.inspect
        @orders = Order.all
        # # @orders = Order.find(1)
        # @order = Order.find_by(Order_Count: 42)
    end

    def show
        # raise params.inspect
        @order = Order.find(params[:id])
    end

    def new
        @order = Order.new()
    end

    def order_params
        # good practice
        params.require(:order).permit(:details, :order_count, :product1_id, :customer1_id)

        # do not use .expect in params
        # params.expect(:order).permit(:details, :order_count)

        # this works but also not proper way because no permit is the. So it lead to security risk. 
        # my_order = {
        #     details: params[:order][:details],
        #     order_count: params[:order][:order_count]
        # }

        # error and wrong way
        # @details = params[:order][:details]
        # @order_count = params[:order][:order_count]
        # # @order = Order.new(details,order_count)

    end

    def create # for adding the records
        # raise params.inspect
        # raise order_params.inspect
        @order = Order.create(order_params) # reason for instanced variable is , so that it will be accessiblen to view also 
        # @order.save  # when we use create action we don't 
        # raise @order.save.inspect

        @order.customer1_id = 13    # this is hard coded not gud practice
        @order.product1_id = 36     # this is hard coded not gud practice
        
        # raise @order.save.inspect

        if @order.save
            redirect_to @order, notice: "Order created successfully" # redirect to show id page
            # redirect_to orders_path # for redirecting to index page
        else
            render :new, notice: "something went wrong!"
        end
    end

    def edit
        @order = Order.find(params[:id])
    end

    def update

        @order = Order.find(params[:id])
        
        if @order.update(order_params)
            redirect_to orders_path, notice: "Order Updated successfully"
        else
            render :edit
        end
        # @order = Order.update(order_params) # do not do this, it will update all the data with same value. Why? because we are calling update action on whole Order model.
    end
 
    # to delete we have destroy action
    def destroy
        @order = Order.find(params[:id]) # find the specific one based on id

        if @order.destroy  # then delete
            redirect_to orders_path, notice: "Order Deleted successfully"
        else
            redirect_to orders_path, alert: "Could not delete"
        end
    end

end