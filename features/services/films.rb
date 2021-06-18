module Rest
    class Films
        include HTTParty 

        headers 'Content-Type' => 'application/json'   

        base_uri CONFIG['base_uri']

        def get_films
            self.class.get('/api/films')
        end

        def get_title(title)
            self.class.get("/api/films/#{title}")
        end   

        def get_planets
            self.class.get('/api/planets/')
        end  
    end
end           