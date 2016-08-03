module ApplicationHelper
    def page_title(title)
        base_title = "Holdup2x Music"
        
        if (title.empty?)
            base_title
            
        else
            "#{title} - #{base_title}"
        end
    end
end
