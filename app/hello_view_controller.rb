class HelloViewController < UIViewController
  def viewDidLoad
    super

    view.backgroundColor = UIColor.whiteColor

    @label = UILabel.new
    @label.frame = [[10, 10], [320, 20]]
    @label.text = 'Hello, World!'

    view.addSubview(@label)
  end
end
