module AppProxy
	class InformationController < ApplicationController
	include ShopifyApp::AppProxyVerification
	  def get
	  	p "from information get method"
	    render plain: "From controller"
	  end
	end
end
