class SayController < ApplicationController
  def hello
	   @time = Time.now
  end

  def goodbye
	puts say_goodnight('Mary-Ellen')
	@files =Dir.glob('*')
  end

  def say_goodnight(name)
	result = 'Good night, ' + name
	return result
  end
end
