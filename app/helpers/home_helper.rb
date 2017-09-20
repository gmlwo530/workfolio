module HomeHelper
    def img(post_num)
        return Image.where(post_id: post_num)
    end
    
     def tag_img(str)
        if str == "ruby"
            return 'rub.jpg'
        end
        
        if str == "illu"
            return 'ill.png'
        end
        
        if str == "photo"
            return 'pho.png'
        end
    end

    def previous_post_type(post_num)
	previous_post_num = post_num - 1
	if previous_post_num > 0
		post = Post.where(id: previous_post_num)
		return post.first.image_type
	else
		return "notebook"
	end
    end
	
end
