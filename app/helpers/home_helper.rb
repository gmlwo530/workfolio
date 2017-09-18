module HomeHelper
    def img(post_num)
        return Image.where(post: "#{post_num}")
    end
    
     def tag_img(str)
        if str == "ruby"
            return '/assets/rub.jpg'
        end
        
        if str == "illu"
            return '/assets/ill.png'
        end
        
        if str == "photo"
            return '/assets/pho.png'
        end
    end
end
