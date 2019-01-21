

Pod::Spec.new do |s|

  s.name         = "JMNotifyView"
  s.version      = "1.0"
  s.summary      = "一行代码实现通知视图，零耦合， 适配iPhone X及以上机型"

  s.description  = <<-DESC
  					超强性能、零耦合
            默认集成四种通用样式
            高度自定义
                   DESC

  s.homepage     = "https://github.com/JunAILiang/JMNotifyView.git"

  s.license      = "MIT"

  s.author             = { "LJM" => "gzliujm@163.com" }

  s.platform	= :ios, "8.0"

  s.source       = { :git => "https://github.com/JunAILiang/JMNotifyView.git", :tag => "#{s.version}" }

  s.source_files  = "JMNotifyView/**/*.{h,m}"

  s.requires_arc = true

end
