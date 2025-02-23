# Clear existing data
Comment.destroy_all
Post.destroy_all

# Post 1 – by Lobelia Sackville-Baggins
post1 = Post.create!(
  title: "Who Disturbs My Lawn?",
  body: "I’ve noticed unusual footprints on my prized lawn. I demand an explanation—someone must be trampling my tender grass!",
  author: "Lobelia Sackville-Baggins",
  posted_at: Time.now - 2.days,
  image: "Lobelia.png"
)

post1.comments.create!(
  body: "Perhaps a mischievous hobbit couldn’t resist a midnight stroll?",
  author: "Bilbo Baggins",
  posted_at: Time.now - 1.day,
  image: "Bilbo.png"
)

post1.comments.create!(
  body: "Or maybe it was that lanky fellow from the mill again.",
  author: "Samwise Gamgee",
  posted_at: Time.now - 1.day,
  image: "Samwise.png"
)

# Post 2 – by Samwise Gamgee
post2 = Post.create!(
  title: "New Garden Patch at Bag End",
  body: "I’ve started a new patch of taters behind Bag End. If any neighbor fancies a helping hand—or a taste test—do let me know!",
  author: "Samwise Gamgee",
  posted_at: Time.now - 3.days,
  image: "Samwise.png"
)

post2.comments.create!(
  body: "I might just pop by with a bit of cream cheese on the side.",
  author: "Meriadoc Brandybuck",
  posted_at: Time.now - 2.days,
  image: "Merry.png"
)

post2.comments.create!(
  body: "Keep an eye on your spuds, Sam. I heard a rumor about a rat problem!",
  author: "Peregrin Took",
  posted_at: Time.now - 2.days,
  image: "Pippin.png"
)

# Post 3 – by Frodo Baggins
post3 = Post.create!(
  title: "Unexpected Noise at Night",
  body: "Last night I heard strange sounds coming from the party wall of my neighbor's house. Could it be a dispute over garden plots?",
  author: "Frodo Baggins",
  posted_at: Time.now - 4.days,
  image: "Frodo.png"
)

post3.comments.create!(
  body: "I suspect it was just a quarrel over the best tomato bed.",
  author: "Lobelia Sackville-Baggins",
  posted_at: Time.now - 3.days,
  image: "Lobelia.png"
)

# Post 4 – by Meriadoc Brandybuck
post4 = Post.create!(
  title: "Lost Keys!",
  body: "I seem to have misplaced my house keys again. If anyone finds a set with a tiny brass bell, please return them.",
  author: "Meriadoc Brandybuck",
  posted_at: Time.now - 5.days,
  image: "Merry.png"
)

post4.comments.create!(
  body: "Merry, you always lose things. Perhaps check your own pockets first!",
  author: "Peregrin Took",
  posted_at: Time.now - 4.days,
  image: "Pippin.png"
)

post4.comments.create!(
  body: "I’ll keep an eye out, though I doubt they’d fit a hobbit of your stature.",
  author: "Samwise Gamgee",
  posted_at: Time.now - 4.days,
  image: "Samwise.png"
)

# Post 5 – by Peregrin Took
post5 = Post.create!(
  title: "A Bit Too Much Ale?",
  body: "After last night’s gathering at the Green Dragon, I fear I may have overindulged. Anyone else wake up with a pounding head and blurry memories?",
  author: "Peregrin Took",
  posted_at: Time.now - 6.days,
  image: "Pippin.png"
)

post5.comments.create!(
  body: "Only you, Pippin, could manage such a feat. I, on the other hand, remain a model of moderation.",
  author: "Frodo Baggins",
  posted_at: Time.now - 5.days,
  image: "Frodo.png"
)

post5.comments.create!(
  body: "I blame the Dragon’s brew—it’s stronger than any wine in the Shire!",
  author: "Gandalf the Grey",
  posted_at: Time.now - 5.days,
  image: "Gandalf.png"
)

# Post 6 – by Gandalf the Grey
post6 = Post.create!(
  title: "A Gentle Reminder",
  body: "Dear neighbors, do mind your manners in the communal gardens. Let’s keep our plots tidy and our conversations friendly.",
  author: "Gandalf the Grey",
  posted_at: Time.now - 7.days,
  image: "Gandalf.png"
)

post6.comments.create!(
  body: "Wise words, Gandalf. A tidy garden reflects a tidy mind.",
  author: "Samwise Gamgee",
  posted_at: Time.now - 6.days,
  image: "Samwise.png"
)

post6.comments.create!(
  body: "Indeed, let’s keep the Shire as peaceful as ever.",
  author: "Bilbo Baggins",
  posted_at: Time.now - 6.days,
  image: "Bilbo.png"
)

puts "Seed data loaded: #{Post.count} posts and #{Comment.count} comments created."
