class AddDefaultPages < ActiveRecord::Migration
  def up
    pages = ["News", "Contact"]
    pages.each do |pagename|
      StaticPage.create name: pagename
    end
    StaticPage.create name: "Homepage", region1: '<iframe width="640" height="360" frameborder="0" allowfullscreen="" src="http://www.youtube.com/embed/uP4nRTTfXqo?autoplay=1&amp;controls=0&amp;rel=0&amp;showinfo=0"></iframe>', region2: "<span>I'm Leila Hernandez,</span>
and I was holding a full time 9 to 5 job, having had key positions in various multinational companies here and abroad, when I decided
<em>I didn't want to grow old working and retire poor.</em>
So I was a 9 to 5 Millionaire for several years, then one day, I made it.
<em>I became financially free, no more need for a 9 to 5 job.</em>"
  end

  def down
    pages = ["Homepage", "News", "Contact"]
    ps = StaticPage.find :all, conditions: [ "name in (?)", pages ]
    StaticPage.delete ps
  end
end

