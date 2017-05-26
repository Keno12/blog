require 'mini_magick'
module EditImage
	def edit_image
		img = MiniMagick::Image.open "https://cdntestv2.pandai.cn/attachments/attaches/000/000/309/original/3.1-4.1huodongpc-banner.jpg"
		w,h = img[:width],img[:height] 					
		shaved_off = ((w-h)/2).round
		img.shave "#{shaved_off}x0"
		img.save  "/asset/images/2.jpg"
		binding.pry
		return img.path
	end
end