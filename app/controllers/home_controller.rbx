module AppProxy
	class HomeController < ShopifyApp::AuthenticatedController
	  def index
	    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
	    @webhooks = ShopifyAPI::Webhook.find(:all)
	    if request.xhr?
	      respond_to do |format|
	        format.html { render :text => html }
	        format.json { render :json => {:html => html, ... } }
	      end
	    end
	    render plain: "OK"
	  end
	end
end
