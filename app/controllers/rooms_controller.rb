class RoomsController < ApplicationController
    def index
        @rooms = Room.all
    end

    def new
        @room = Room.new
    end

    def create
        @room = Room.new(room_params)

        if @room.save
            redirect_to rooms_path, notice: "新增成功"
        else
            render :new
        end
    end

    def edit
        @room = Room.find_by(id: params[:id])
    end

    def update
        @room = Room.find_by(id: params[:id])
        if @room.update(room_params)
            redirect_to rooms_path, notice: "修改成功"
        else
            render :edit
        end
    end

    def destroy
        @room = Room.find_by(id: params[:id])
        @room.destroy if @room
        redirect_to rooms_path, notice: "刪除成功"
    end


    private
    def room_params
        params.require(:room).permit(:room_number, :room_name, :room_types, :sleeps, :price, :room_features, :description)
    end
end
