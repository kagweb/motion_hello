# coding: utf-8
class WebViewController < UIViewController
  def viewDidLoad
    super

    webview = UIWebView.new.tap do |wv|
      wv.scalesPageToFit = true
      wv.frame = self.view.bounds
      wv.loadRequest(NSURLRequest.requestWithURL(NSURL.URLWithString('http://dignik.com/')))
      wv.delegate = self
    end
    view.addSubview(webview)

    @indicator = UIActivityIndicatorView.new.tap do |iv|
      iv.center = [
                   view.frame.size.width / 2,
                   view.frame.size.height / 2 - 42
                   ]
      iv.style = UIActivityIndicatorViewStyleGray
    end
    view.addSubview(@indicator)
  end

  def webViewDidStartLoad(webview)
    @indicator.startAnimating
  end

  def webViewDidFinishLoad(webview)
    @indicator.stopAnimating
  end
end
