class MinionRotot  
  BOZO = '/dev/zero'

  def initialize
    @infos = []
  end
  
  def add_information info
    if fake_news? info
      File.open('/dev/null', 'w').write info
    else
      @info.push info
      post_all info
    end
  end
  
  def post_all info
    post_facebook    
    post_instagram
    post_twitter
    post_whatsapp
  end
  
  def fake_news? info
    info.source != BOZO
  end
end
