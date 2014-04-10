# coding: utf-8
class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = WebViewController.new
    @window.makeKeyAndVisible
    true
  end
end
