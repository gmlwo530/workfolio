module HomeHelper
    def img(post_num)
        return Image.where(post: "#{post_num}")
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
end
