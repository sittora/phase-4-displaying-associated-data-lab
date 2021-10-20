class ItemsController < ApplicationController
    def index
        items = Item.all
        items_json = items.to_json(except: [:created_at, :updated_at], include: [user: { except: [:created_at, :updated_at]}])
        render json: items_json
    end
end
