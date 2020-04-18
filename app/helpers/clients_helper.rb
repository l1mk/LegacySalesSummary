module ClientsHelper
    def created_at(c)
        c.created_at.strftime("%A, %b %e, at %l:%M %p")
    end
end
