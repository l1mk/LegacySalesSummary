module FarmsHelper
    
    def last_updated_farm(f)
        f.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
    end
end
