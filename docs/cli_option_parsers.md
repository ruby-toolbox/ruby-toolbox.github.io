- `highline`

   <div class="description">简化在console需要输入输出的代码，极佳的代替 gets() 和 puts() </div>

		require 'highline/import'
		ask("Enter your password:  ") { |q| q.echo = false }

		# menu
		choose do |menu|
		  menu.prompt = "Please choose your favorite programming language?  "

		  menu.choice(:ruby) { say("Good choice!") }
		  menu.choices(:python, :perl) { say("Not from around here, are you?") }
		end

- `slop`

   <div class="description">解析命令行参数，并做出优雅的帮助提示</div>


		opts = Slop.parse do
		  banner 'Usage: foo.rb [options]'

		  on 'name=', 'Your name'
		  on 'p', 'password', 'An optional password', argument: :optional
		  on 'v', 'verbose', 'Enable verbose mode'
		end
	    # Usage: foo.rb [options]
	    #     --name          Your name
	    # -p, --password      An optional password
	    # -v, --verbose       Enable verbose mode


		# if ARGV is `--name Lee -v`
		opts.verbose?  #=> true
		opts.password? #=> false
		opts[:name]    #=> 'lee'
		opts.to_hash   #=> {:name=>"Lee", :password=>nil, :verbose=>true}

- `cocaine`

   <div class="description">对在Ruby调用命令行的封装</div>

		line = Cocaine::CommandLine.new("convert", ":in -scale :resolution :out")
		line.command(:in => "omg.jpg",
		             :resolution => "32x32",
		             :out => "omg_thumb.jpg")
		# => "convert 'omg.jpg' -scale '32x32' 'omg_thumb.jpg'"

		# 还有很多的功能，可以看官方介绍

- `mixlib-cli`

   <div class="description">类似 slog ，看上去更复杂一些</div>
- `trollop`

   <div class="descritpion">据说名字的意思很不好听，而且没有Github，pass</div>

- `commander`
   <div class="description">highline 的升级版，提供了更多的功能，比如自动生成帮助文档等等，PS：visionmedia.github.io/commander做的也很好</div>