# coding: utf-8
class MainViewController < UIViewController
  def viewDidLoad
    super
    margin = 20
    view.backgroundColor = UIColor.whiteColor
    navigationItem.title = 'WebView sample'
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect).tap do |b|
      b.setTitle('Open WebView', forState:UIControlStateNormal)
      b.frame = [[margin, 100], [view.frame.size.width - margin * 2, 42]]
      b.addTarget(self, action:'buttonDidPush', forControlEvents:UIControlEventTouchUpInside)
    end
    view.addSubview(button)
  end

  def buttonDidPush
    web = WebViewController.new.tap { |wv| wv.url = 'http://dignik.com/' }
    navigationController.pushViewController(web, animated:true)
  end
end
