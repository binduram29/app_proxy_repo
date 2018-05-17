module AppProxy
	class HomeController < ShopifyApp::AuthenticatedController
	  def index
	  	p "11111111111111111111111111111111111111111111111"
	    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
	    @webhooks = ShopifyAPI::Webhook.find(:all)
	    # if request.xhr?
	    #   respond_to do |format|
	    #     format.html { render :text => html }
	    #     format.json { render :json => {:html => html, ... } }
	    #   end
	    # end
	    p "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
	    render text: "OK"
	  end
	end
end
