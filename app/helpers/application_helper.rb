# encoding: utf-8

module ApplicationHelper
  def iframe(url)
    haml_tag :iframe, {scrolling: 'no', frameborder: 'no', allowfullscreen: 'true', src: url}
  end

  def markdown(text)
    md = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    md.render(text).html_safe
  end

  def update_published_at(update)
    format = '%B %d, %Y %H:%M %Z'
    time = update.published_at.in_time_zone('Pacific Time (US & Canada)')

    time_tag(time, format: format)
  end


  def full_cast
    #Andre Meadows, Morgan Benoit, Jeneta St. Clair, Myko Olivier, Erin Konstantine, David Atwood, Jose Montesinos, Brian Rodvien, Matthew Zipkin, Matt  O'Donnell, Adam Oestergaard, Giovannie Espiritu, Ryan Johnson, Lisa Younger, Annamarie MacLeod, Rachel Marie Lewis, Alex Arleo, Brent Steffensen, Steffi Graffis.
    @full_cast ||=
      [
        {
          name: 'andre_meadows',
          character: 'Bert / Steffen',
          resume: %Q|Andre Meadows is an actor, comedian, writer, and <em>Black Nerd</em>. Every week on his YouTube channel, Black Nerd Comedy, Andre rants about geek culture,
            80s-90s nostalgia, and has &ldquo;Awkward Talks with Girls.&rdquo; To see his videos, check out #{link_to 'http://YouTube.com/BlackNerdComedy', 'http://youtube.com/blacknerdcomedy'}.
            Other web credits for Andre include <em>The Guild</em> with Felicia Day, <em>Table Top</em> with Wil Wheaton, and <em>Space Guys in Space</em> with Jason Marsden.
            Andre is also a stand-up comedian, featuring and headlining comedy shows and comic convention panels, even opening for such comics as Aisha Tyler and Maria Bamford.
            His film and TV credits range from being a real movie reviewer on ReelzChannel's <em>Movie Mob</em> to being a fake news reporter on HDNet's <em>Goodnight Burbank</em>.
            He brings his comedic style to commercials, Asylum movies and <em>The Breakdance Kid</em>.
            But he is quite proud to show off his dramatic side in <em>Bert</em> as he has done with stage plays in the past.|,
          website: 'AndreMeadows.com'
        },
        {
          name: 'morgan_benoit',
          character: 'Steffen / Bert',
          resume: %Q|
            Morgan Benoit has been involved in Chinese martial arts for over 15 years.
            Following his passion, he moved to China at age 18 to study at the Beijing Sports University where he mastered Long Fist Kung Fu.
            Once ascending to the top of his class in just a couple of years, he was admitted to the prestigious Shi Cha Hai Sports Academy,
            a former training ground of Jet Li and many of China's top Olympic athletes.
            His love of martial arts led to his interest in acting and he started in China as a stunt man.
            He eventually worked his way up to leading roles in many Chinese and American productions.
            His ability and enthusiasm was well-noted by Jackie Chan whom he worked with in <em>The Forbidden Kingdom (2008)</em>.|
        },
        {
          name: 'jeneta_st_clair',
          fullname: 'Jeneta St. Clair',
          character: 'Sara',
          resume: %Q|After growing up in Sheboygan, Wisconsin, then half-raised in Indianapolis under the tutelage of her drama director father,
          Jeneta moved straight to California after graduating high school. Since completing the contemporary program at the American Musical and Dramatic Academy
          in February 2010, she has been a part of multiple films and commercials. Her most recent credits include a PS3 commercial and feature films including
          <em>Mudman</em>, <em>Paradox Alice</em>, and <em>The Return of the Killer Shrewsall</em> being released this summer!
          In between projects, she continues her training with the Will Wallace Acting Company and performing company and self-written sketch shows
          at the Straitjacket Society in Hollywood.|
        },
        {
          name: 'myko_olivier',
          character: 'Frank',
          resume: %Q|Myko Olivier is a California native from Palm Springs, and attended the Tisch School of the Arts at New York University where he earned his B.F.A in Drama.
          Since moving to LA in 2010 he has had a lot of commercial success and has begun to breakout into the film/TV world.
          His credits include (film) <em>Don Juan</em>, <em>Barely Legal</em>, <em>The Cinderella Effect</em>, (TV) <em>South Park</em>, <em>Let It Go</em>,
          (Web) <em>Obelisk Road</em>, and <em>Justin America</em>. Myko will also be staring in a feature film next year with Eric Roberts, Jon Gries, and Martin Kove
          called <em>Todd Lucas: Singer/Songwriter</em>.|,
          website: 'MykoOlivier.com'
        },
        {
          name: 'erin_constantine',
          character: 'Shewana',
          resume: %Q|Erin is an avid fan of all things real, like children, diapers and going to the grocery store in her pajamas.
          However, she adores the fantastical break of acting, especially when playing reality, and just can't bring herself to quit,
          though she's tried for over 20 years. In the world of real success, Erin has done many commercials,
          passionate indie films and meaty theater.|
        },
        {
          name: 'jose_montesinos',
          role: 'Writer/Director',
          resume: %Q|A native San Franciscan of Peruvian and Salvadorean descent,
          Jose Montesinos has been making movies since he received his first video
          camera at age 14. He continued to hone his skills through the years,
          and also attended film school at San Francisco City College in
          the early 1990's. In 2009, Jose was awarded the Mastermind grant
          from the SF Weekly for being recognized as a standout local talent.
          Jose’s feature-length crime drama titled Owned was an official selection
          in several film festivals, including HBO’s New York International Latino
          Film Festival, and has since found a distribution deal with Maverick
          Entertainment. It was released in July 2011.|,
          website: 'Montanick.com'
        },
        {
          name: 'matthew_zipkin',
          role: 'Sound Mix/Sound Design/Foley',
          resume: %Q|Matthew Zipkin studied music and audio engineering at Berklee College of Music in Boston.
          He is currently a full-time audio post-production engineer at One Union Recording Studios in San Francisco, CA,
          and he plays guitar and keyboards in a variety of different bands around the city.|,
          website: 'MatthewZipkin.com'
        },
        {
          name: 'giovannie_espiritu',
          character: 'Babette',
          resume: %Q|Giovannie Espiritu is a seasoned, working actress who was nominated for Best Supporting Actress alongside Academy Award nominees Alfre Woodard
          and Amy Irving at Method Fest. Other credits include a recurring role on <em>ER</em> (4 episodes), <em>Trauma</em> (NBC), <em>Bones</em>, and <em>Gilmore Girls</em>.
          She is also founder of the #{link_to 'SfActorsWorkshop.com', 'http://www.sfactorsworkshop.com'}, and her students have been signed by the top agencies in LA and SF.|,
          website: 'Giovannie.com'
        },
        {
          name: 'ryan_johnson',
          character: 'Open Mic MC',
          resume: %Q|Ryan Thomas Johnson's acting credits include <em>Saved by the Bell: The New Class</em>, <em>Boston Common</em>, <em>Captain Nuke and the Bomber Boys</em>,
          and the cult classic <em>Carnosaur 2</em>. If all those titles seem to be from the 90's, it's because Ryan has dedicated his recent years to a career in music.
          He has recorded numerous albums, toured in four different countries, shared the stage with everyone from Kid Koala to Joseph Gordon-Levitt,
          scored fast food commercials, and music directed live theatrical events.|,
          website: 'RyanThomasJohnson.com'
        },
        {
          name: 'annamarie_mac_leod',
          character: 'Bernice',
          resume: %Q|Annamarie MacLeod has appeared in numerous independent films, among them are <em>U5</em> (a Scary Cow Production) and <em>Political Animals</em>
          (for which she was nominated for best actress at the Action on Film International Film Festival in 2011).
          She also stars in the web-series <em>EXIT Stage Left</em> and the up-coming <em>Social Lies</em>. Ms. MacLeod trained in New York and London,
          and was named an &lsquo;Actor to Watch&rsquo; by WAVE Magazine.|,
          website: 'AnnamarieMacLeod.com'
        },
        {
          name: 'rachel_marie_lewis',
          character: 'Carla',
          resume: %Q|Rachel Marie Lewis began acting at Atlanta's Tony Award winning Alliance Theater when she was in her teens.
          She went on to receive a B.F.A. in Drama from NYU's Tisch School of the Arts. Her past credits include <em>Glee</em>, <em>Black Swan</em>,
          and indie festival hit <em>Transatlantic Coffee</em>. You can catch her starring in two more feature films next year: Brand Bros'
          <em>Lie With Me</em> (Also starring Bert's Lisa Younger) and <em>House of Good and Evil</em> (Also starring the great Tippi Hedren).
          Rachel's love of acting is rooted in her deep love of storytelling, and she's very excited to be a part of this unique, fun film!|,
          website: 'RachelMarieLewis.com'
        },
        {
          name: 'alex_arleo',
          character: 'Waiter',
          resume: %Q|Alex Arleo worked for the first time with Jose Montesinos on the film <em>Barely Legal</em> and instantly became a fan of Jose’s direction
          and unique artistic choices. Alex has appeared in several films including his lead role in <em>The Haunting of Whaley House</em>
          and alongside Michael Madsen in the drama <em>Sprawl</em>.
          Follow Alex Arleo’s news and updates on his #{link_to 'Facebook page', 'http://www.facebook.com/AlexArleo'}
          and #{link_to 'IMDB page', 'http://www.imdb.me/alexarleo'} to learn more about this exciting, young actor.|
        }
      ]
  end
end
