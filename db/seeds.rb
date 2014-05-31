Product.delete_all

Product.create!(title: 'Web Development with Clojure',
  description:
    %{<p>
      If the usual patchwork of web development tools and languages
      just isn't cutting it for you, you need Web Development With Clojure.
      Clojure gives you the rich infrastructure of the JVM with the
      expressive power of a modern functional language. It combines excellent
      performance with rapid development-and you can exploit these virtues
      for web app development. With step-by-step examples, you'll learn how
      to harness that power and richness to build modern web applications.
    </p>},
  image_url:   'clojure.jpg',
  price: 24.00)

Product.create!(title: 'Programming Ruby 1.9 & 2.0',
  description:
  %{<p>
    Ruby is the fastest growing and most exciting dynamic language
    out there. If you need to get working programs delivered fast,
    you should add Ruby to your toolbox.
  </p>},
  image_url: 'ruby.jpg',
  price: 49.95)


Product.create!(title: 'Pomodoro Technique Illustrated',
  description:
  %{<p>
    Do you ever look at the clock and wonder where the day went? You spent
    all this time at work and didn't come close to getting everything done.
    Tomorrow, try something new. Use the Pomodoro Technique, originally
    developed by Francesco Cirillo, to work in focused sprints throughout
    the day. In Pomodoro Technique Illustrated, Staffan Noteberg shows you
    how to organize your work to accomplish more in less time. There's no
    need for expensive software or fancy planners. You can get started with
    nothing more than a piece of paper, a pencil, and a kitchen timer.
  </p>},
  image_url: 'pomdoro.jpg',
  price: 19.00)
