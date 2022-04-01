# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# find_or_create
 user1 =  User.create!(
    email: "miyagawa@test.com",
    name: "Miyagawa",
    password: "password",
    introduction: "プレミアリーグファンです！特にアーセナルが好きです"
     )
    user1.profile_image.attach(io: File.open("#{Rails.root}/db/fixtures/sample-user1.jpg"), filename:"sample-user.jpg")

  user2 = User.create(
    email: "James@test.com",
    name: "James",
    password: "password",
    introduction: "Jリーグファンです！よろしくお願いします"
    )
  user2.profile_image.attach(io: File.open("#{Rails.root}/db/fixtures/sample-user2.jpg"), filename:"sample-user.jpg")

  user3 = User.create!(
    email: "lucas@test.com",
    name: "Lucas",
    password: "password",
    introduction: "海外サッカーをよく見ます！よろしくお願いします"
    )
  user3.profile_image.attach(io: File.open("#{Rails.root}/db/fixtures/sample-user3.jpg"), filename:"sample-user.jpg")

  user4 = User.create!(
    email: "taro@test.com",
    name: "太郎",
    password: "password",
    introduction: "ガンバ大阪ファンです！",
    )

  user5 = User.create!(
    email: "jiro@test.com",
    name: "二郎",
    password: "password",
    introduction: "海外サッカーをよく見ます！特にプレミアリーグとスペインリーグをよく見ます",
    )


  Post.create!(
    match_date_time: Time.zone.parse('2022-03-1 14:00'),
    home_team: "セレッソ大阪",
    away_team: "ヴィッセル神戸",
    category: "Jリーグ",
    body: "最高の試合でした",
    user_id: user2.id
    )

  Post.create!(
    match_date_time: Time.zone.parse('2022-03-2 00:00'),
    home_team: "アーセナル",
    away_team: "リバプール",
    category: "プレミアリーグ",
    body: "リバプールがとても強かったです",
    user_id: user1.id
    )

  Post.create!(
    match_date_time: Time.zone.parse('2022-03-3 16:00'),
    home_team: "ガンバ大阪",
    away_team: "浦和レッズ",
    category: "Jリーグ",
    body: "ガンバ大阪が勝ってよかったです",
    user_id: user4.id
    )

  Post.create!(
    match_date_time: Time.zone.parse('2022-03-4 23:00'),
    home_team: "マジョルカ",
    away_team: "バルセロナ",
    category: "ラ・リーガ",
    body: "試合には負けましたが久保選手のプレーは良かったです!",
    user_id: user5.id
    )

  Post.create!(
    match_date_time: Time.zone.parse('2022-03-5 4:45'),
    home_team: "マンチェスターU",
    away_team: "チェルシー",
    category: "プレミアリーグ",
    body: "ロナウド選手のゴールが凄かったです!いい試合でした",
    user_id: user3.id
    )

  Post.create!(
    match_date_time: Time.zone.parse('2022-03-8 14:00'),
    home_team: "ヴィッセル神戸",
    away_team: "名古屋グランパス",
    category: "Jリーグ",
    body: "面白かった!",
    user_id: user2.id
    )

  Post.create!(
    match_date_time: Time.zone.parse('2022-03-10 1:30'),
    home_team: "チェルシー",
    away_team: "アーセナル",
    category: "プレミアリーグ",
    body: "負けましたがいい試合でした",
    user_id: user1.id
    )