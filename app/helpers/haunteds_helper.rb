module HauntedsHelper
    def last_updated_haunted(h)
        h.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
      end

end
