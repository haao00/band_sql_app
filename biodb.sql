drop database if exists biodb; #先にdemoと言う名前のデータベースがあったら削除する
create database biodb; #demoという名前のデータベースを作成する

use biodb; #demoデータベースを使用する

#テーブルを作成する
create table BANDGROUP (
  groupID char(10) not null,
  name char(255) not null,
  genre char(100) not null,
  debut int not null,
  country char(20) not null,
  managementoffice char(255) not null,
  location char(20) not null,
  primary key (groupID)
);
                      
                      
create table SONG(songID int not null,
                     songname char(255) not null,
				mtime time not null,
				mrelease int not null,
				groupID char(10) not null,
     		 		lyrics text not null,
     		 		primary key(songID));



insert into BANDGROUP values
('A','文藝天国','オルトロック','2019','日本','bungei records','東京都'),
('B','BLACKPINK','K-POP','2016','韓国','YGエンターテインメント','韓国'),
('C','yonige','邦ロック','2013','日本','有限会社small indies table','大阪府'),
('D','羊文学','オルトロック','2012','日本','株式会社SME','東京都'),
('E','Charlie Puth','R&B','2009','アメリカ','ワーナーミュージックジャパン','東京都'),
('F','the shes gone','邦ロック','2016','日本','株式会社UKプロジェクト','東京都'),
('G','easpa','K-POP','2020','韓国','SMエンタテイメント','韓国'),
('H','RADWIMPS','邦ロック','2001','日本','有限会社voqueting','東京都'),
('I','ONE OK ROCK','オルトロック','2005','日本','株式会社10969','東京都'),
('J','Ado','J-POP','2017','日本','株式会社クラウドナイン','東京都'),
('K','Vaundy','邦ロック','2019','日本','スターダストレコーズ','東京都'),
('L','Avril Lavigne','ポップロック','2002','カナダ','アリスタ・レコード','アメリカ'),
('M','BIGBANG','K-POP','2006','韓国','YGエンターテインメント','韓国');


insert into SONG values
('1','水槽少女','4:14','2019','A', 
'古びた水槽の魚を見つめては、
小さく咲う幼気な君の唇を知ってる。
君の髪の先
君の手の形
今となっては僕の心臓の淵をつねってる。
水槽少女に触りたい。
水槽少女を咲わせたい。
水槽少女を抱きしめたいのに何もないよ。
君を見てたこの目が痛い。
君と見つめてた海が痛い。
どこを探しても君はいないのだ
ねえ、ずるいよ。
あの日の信号が僕の脳裏をよぎる。
呼吸を重ねて君をなぞったが、気持ちよくもないな。
君がなにを、
なにをしたって言うんだ。
君がなにを。
水槽少女はもういない。
水槽少女が僕を汚す。
水槽少女を抱きしめたいのに何もないよ。
黄ばんだ世界の上、僕の手だけ拒んだ君が僕を忘れ、
僕だけ今でも君を探してるよ。
ねえ、待って。'),
('2','Girls','4:01','2022','G', 
'さあ 立ち上がって破滅的な戦いの中踏ん張って耐えて 敵のHook!怖くない君がHoot ぶち壊してあげる変わったのよ 私たちがKWANGYAを超えて帰ってくる時歪んでしまったさらに私らしく まるでシンクロして見えるハンパない存在感の現身取り残された火種が巨大な悪に成長して君から気力を奪い孤立させた時また集まって 僕たちはまた一緒に襲い掛かってぶち壊せ君は一人じゃない輝いたいけにえ記憶を取り戻したなら姿を見せて 出てきて今すぐ ここについて来て見守ってて驚くはず私達はやってくる叫んで聞いて歌ってみて私達はやってくる混沌の中で蘇る恐怖に立ち向かう勇気いつだって私たちは 一緒We them girlsWe them girlsWe them girlsメタユニバース 共存する今 パラレルワールドすべての存在が意味をもつ私の心臓の一部私たちは共感の言語を使って体温を共有する結局 私達は善良という価値を追求するだけよ私はついに強くなれた振り回されたり やられたりしないまた何もかもが捻じ曲げられてしまう始まった 仲を引き裂いて君と私を断絶させる 何も見えないように醜い欲望に歪んでしまった捨てたアルゴリズムたちが存在を武器に破壊へと飲み込んでしまうその瞬間 悪は始まったどいて私は一人じゃない守ってあげたい初めて逢う 君のREKALLハグしてあげる気持ちが伝わるようにSYNK DIVEせずについて来て見守ってて驚くはず私達はやってくる叫んで聞いて歌ってみて私達はやってくる混沌の中で蘇るWe them girls恐怖に立ち向かう勇気いつだって私たちは一緒We them girlsWe them girls平和な一日を迎える私たちは平穏 その中で一緒に笑って恋をするWith my friendsこれからnavisと共に切り拓いていく未来を知りたいよいずれ私達は出会えるよ本当の世界で待っててね本当の世界で君は鏡に映った私それよりも光る存在言ってくれる？いつまでも一緒だよとついて来て見守ってて驚くはず私達はやってくる叫んで聞いて歌ってみて私達はやってくる混沌の中で蘇る恐怖に立ち向かう勇気いつだって私たちは一緒だって私達はチームだからALLGirls!'),
('3','ワンルーム','3:34','2017','C',
 'あげっぱなしの便器がやけにリアルで恥ずかしくなった
君を泊まらせた後の誰もいないワンルーム
こんな気持ちになるのは今だけなんだけどな
やけにずっと待ちわびてる0.2秒の振動を
綺麗に畳んだ寝巻きと
少しずれてるこの気持ち
君が悲しく笑うから
それでもいいって思った
そんなのやっぱ忘れさして
今は君を想いたいよ
明日なんてどうだっていいよ
ずっとこのままいれるように
ずぶ濡れになった洗濯物
じめっとした夏の匂い
数だけ増えてく約束が
倒れて潰されそうだ
懐かしいドラマ再放送
あれって独り言が響くねえ、今何考えてる？
君が悲しく笑うから
それでもいいって思った
君の一番になれないけど
君もわたしの一番じゃないよ
そんなんやっぱ忘れさして
今は君を想いたいよ
絶対なんて嘘だった
今は君に優しくしたい  '),
('4','BLUE','3:54','2008','M', 
'冬から春へ変わる
心は懐かしさであざだらけ
Im singing my blues 悲しみも涙も青く染まる
Im singing my blues 浮き雲に放した愛 Oh oh
自ら離れたから Ima say good night 僕たちの Love story
tonight
「愛」の前に「B」を付けた When I said good bye
君の目は Teary eyes
忘れたいのにできないよ！ feel so hollow 君以外の人を愛する事はないよ Allalone now everyday
出会ってから君を愛した死ぬほど
今や青く染まり枯れ
君を感じられない心に
冬から春へ変わる
心は懐かしさであざだらけ
Im singing my blues 悲しみも涙も青く染まる
「m singing my blues 浮き雲に放した愛 Oh oh
心臓が止まったようだ 終わった所で凍りついた You and
頭に刻む Trauma 乾く涙で思い出すオレの愛
辛くも悲しくもない Talking to myself inside 我慢できず堪えられない
全ては仕方が無かった 、人は出会いや別れを続けるんだ
出会ってから君を愛した死ぬほど
今や青く凍りついた
君を感じられない心に冬から春へ変わる
心は懐かしさであざだらけ
青い月灯り浴びて今夜も眠りにつく夢でも君を探してさまよいこの唄歌うよ
Im singing my blues 悲しみも涙も青く染まる
Im singing my blues 浮き雲に放した愛
Im singing my blues 悲しみも涙も青く染まる
「m singing my blues 浮き雲に放した愛 Oh oh'),
('5','花占い','3:27','2021','K', 
'街の夕焼けに溶けた
僕たちはまだ2人だろうか
風が吹く僕たちを乗せて
2人でちぎった花に
願いを込めて

願うなら
僕たちを出会うよりも
ずっと遠くに

叶うなら
僕たちの運命さえも
もっと遠くに

なんて 笑って 吐いて 捨てては
君を思い出す
そんな思いを
抱いて 抱えて 悶えた 先には
いつも君がいる

「そんなことより
恋路の果てにはなにがある」

くだらない話を2人で
しよう

僕たちの1000年の恋は
相槌で折れる花のようだ
僕たちは1000年後もまだ
同じように待ってんだ
笑っちゃうよね

あなたと以外
もうどこにもいけない
波の中で
混じり合わない
日々の中で
2人がたっている
永劫を

なんて 笑って 吐いて 捨てては
君を思い出す
そんな思いを
抱いて 抱えて 悶えた 先には
いつも君がいる

「そんなことより
願いは君との先にある」

たわいない話を2人で
しよう

僕たちの1000年の恋は
相槌で折れる花のようだ
僕たちは1000年後もまだ
同じように待ってんだ
笑っちゃうよね

何年経っても妄想が
根を張ってもうこんなに
溢れ出している
願いは
花が散るほど
溢れ出していく
花占う恋歌

僕たちの1000年の恋は
相槌で咲く
花のように
僕たちは1000年後もまだ
同じようにちぎってまた
笑っていたいよね'),
('6','世界のつづき','4:49','2022','J', 
'世界のつづき
どうして あの日遊んだ海のにおいは
どうして すぎる季節に消えてしまうの
またおんなじ歌を歌うたび
あなたを誘うでしょう

信じられる？ 信じられる？
あの星あかりを 海の広さを
信じられる？ 信じられるかい？
朝を待つ この羽に吹く
追い風の いざなう空を

どうして かわることなく見えた笑顔は
どうして よせる波に隠れてしまうの
またおんなじ歌を歌うたび

あなたを想うでしょう
信じてみる 信じてみる
この路の果てで 手を振る君を
信じてみる 信じてみるんだ
この歌は 私の歌と
やがて会う 君の呼ぶ声と

信じてみる 信じられる
あの星あかりを 海の広さを
信じてみる 信じられる
夢のつづきで また会いましょう
暁の輝く今日に

信じられる？ 信じられる？
あの星あかりを 海の広さを
信じられる 信じられる
夢のつづきで 共に生きよう
暁の輝く今日に'),
('7','shower','4:16','2019','F', 
'どうしても眠れない夜があって
こうして 窓から朝が流れて
起きて 13時の朝ご飯へ
終えて 外にでも出てみよう
昨日の雨が見てよ 嘘のよう
見えないけど 心の雨は消えてはないよ
傘を差して
思い返せばあいつが言ってた言葉も
そんな問題も悩みも知らぬ間に吹っ飛べば良いのにな
どうしたって
逃げてしまいそう 消えてしまうかも
でも逃げないでいるよ 消えないでいてよ'),
('8','WE LIKE 2 PARTY','3:16','2016','M', 
'今日もあいつらがやってきたAYE 一杯 貰える？一番 最後に飲んだ奴が仕掛け人もう全部混ぜて飲んじゃえ俺の時計は 時は金なりって知らせてる華YOU DIG僕らはまだ若い後悔なんて明日すればいいちょっと危険AYE MAN YOU BETTER SLOW IT DOWN二度と戻って来ない今日のためあの空に向かって乾杯WE LIKE 2 PARTY YEAH YEAH YEAH YEAH WE LIKE 2 PARTY朝になるまで遊ぼうWE LIKE 2 PARTY YEAH YEAH YEAH YEAHWE LIKE 2 PARTYハイになるまで久しぶりにする火遊び「今から2人で抜けよっか？」ザワザワ 雰囲気はファンタジー怖いもの知らずのイケメン酔っ払いたちあちこち 散らかした OPUS ONEシメは甘いので D’yquem君のこと置いて行くわけないだろ一緒に天国へ行こうシラフは反則俺たちまだ若い後悔なんて明日すればちょっと危険AYEMAN YOU BETTER SLOW IT DOWN二度と戻ってこない今日のためあの空に向かって乾杯君なしじゃ おかしくなりそうDJ PLAY A LOVE SONG酔ってるわけじゃないんだって君に会いたくて死にそうだよSO DJ PLAY A LOVE SONG'),
('9','Stnd Out Fit In','3:35','2019','I', 
'I know they dont like me that much
Guess that I dont dress how they want
Liust wanna be myself cant be someone else
Try to color inside their lines
Try to live a life by design |just wanna be myself
I cant be someone else
Someone else
They yell they preach
Ive heard it all before
Be this be that
Ive heard it before
Heard it before
Big boys dont cry
Shoot low aim high
Eat up stay thin
Stand out fit in
Good girls dont fight
Be you dress right
White face tan skin
Stand out fit in
Stand out fit in
Stand out fit in
同じことの繰り返しで
飽き飽きしている日々
ただ自分らしくありたい
ありのままで
Cant be someone else
They yell they preach
Ive heard it all before
Be this be that
Ive heard it before
Heard it before
Big boys dont cry
Shoot low aim high
Eat up stay thin
Stand out fit in
Good girls dont fight
Be you dress right
White face tan skin
Stand out fit in
Stand out fit in
Stand out fit in
Stand out fit in
Stand out fit in
lam who I am
No matter what
Never changing
No matter what
No matter what
Big boys dont cry
Shoot low aim high
Eat up stay thin
Stand out fit in
Good girls dont fight
Be you dress right
White face tan skin
Stand out fit in
Big boys dont cry
Shoot low aim high
Eat up stay thin
Stand out fit in
Good girls dont fight
Be you dress right
White face tan skin
Stand out fit in
Stand out fit in
Stand out fit in
Stand out fit in
Stand out fit in'),
('10','See You Again','3:50','2015','E', 
'Its been a long day without you, my friend And TIl tell you all about it when I see you again Weve come a long way from where we began Oh, Ill tell you all about it when I see you again
When I see you again
Damn, who knew?
All the planes we flew, good things we been through That Id be standing right here talking to you
Bout another path, I know we loved to hit the road and laugh
But something told me that it wouldnt last
Had to switch up, look at things different, see the bigger picture
Those were the days, hard work forever pays
Now I see you in a better place (see you in a better place)
Uh
How can we not talk about family when familys all that we got?
side
Everything I went through, you were standing there by my
And now you gonbe with me for the last ride
Its been a long day without you, my friend
And lIl tell you all about it when I see you again (Ill see you again)
Weve come a long way (yeah, we came a long way)
From where we began (you know we started)
Oh, lll tell you all about it when I see you again (Ill tell you)
When I see you again
First, you both go out your way and the vibe is feeling strong And whats small turned to a friendship, a friendship turned to a bond
And that bond will never be broken, the love will never get

lost
The love will never get lost)
And when brotherhood come first, then the line will never be crossed
Established it on our own when that line had to be drawn And that line is what we reached, so remember me when Im gone
(Remember me when Im gone)
How can we not talk about family when familys all that we got?
side
Everything I went through you were standing there by my
And now you gon be with me for the last ride
So let the light guide your way, yeah
Hold every memory as you go And every road you take
Will always lead you home, home
Its been a long day without you, my friend And III tell you all about it when I see you again Weve come a long way from where we began Oh, Ill tell you all about it when I see you again
When I see you again
When I see you again (yeah, uh)
See you again (yeah, yeah, yeah)
When I see you again'),
('11','What the Hell','3:41','2011','L', 
'You say that Im messing with your head
All cause I was making out with your friend
Love hurts whether its right or wrong
I cant stop cause Im having too much fun
Youre on your knees
Begging, "Please, stay with me"
But, honestly I just need to be a little crazy
All my life Ive been good
But now Im thinking, "What the hell"
A want is to mess around
And I dont really care about
If you love me, if you hate me You cant save me, baby, baby
All my life Ive been good
But, now what the hell
What? What? What? What the hell?
So, what if I go out on a million dates You never call or listen to me anywav
Id rather rage than sit around and wait all day
Dont get me wrong, I just need some time to play
Youre on your knees
Begging, "Please, stay with me"
But, honestly I just need to be a little crazy
All my life Ive been good
But now Im thinking, "What the hell"
All want is to mess around And I dont really care about
If you love me, if you hate me You cant save me, baby, baby
All my life Ive been good
But now, what the hellLa la la la la la la la
Whoa, whoa
La la la la la la la la
Whoa, whoa
You say that Im messing with your head, boy
| like messing in your bed
Yeah, I am messing with your head
When Im messing with you in bed
All my life lve been good
But now Im thinking, "What the hell"
All I want is to mess around
And I dont really care about
All my life Ive been good
But now Im thinking, "What the hell"
All want is to mess around
And I dont really care about
If you love me, if you hate me You cant save me, baby, baby
All my life lve been good
But, now what the hell
La la la la la la la la'),
('12','Tummy','4:47','2013','H', 
'今から宣戦布告 二人の子供にきっと僕嫉妬すんだよ
きっとそうだよ あぁ もう想像つく
君と血が繋がっているなんて なんて羨ましいやつだって
おとな気なんてこれっぽっちもなく 耐えられなくなって頬を濡らす
根掘り葉掘り生まれて間もない その子に僕は尋ねてみたい
お母さんのお腹はどうでした 僕が見れない景色はどうでした
さぞ素晴らしい さぞ美しい +月十日の旅だったんだろう
僕よりも彼女を知っている 君が嬉しくて どこか悔しくて
Welcome to the new world
From the tummy of such a mighty little girl
For the rest of all my days when I say beautiful, youre beautiful
TI be always talking about you or your mom, now hey
Welcome to the new world
From the tummy of such a mighty little girl
I cant find a better reason to live for, Im here for Im not gonna say it, no Ill never, Ill just keep it in my arms
Oh, oh, oh, oh, oh
負けてばかりもいられない よちよち歩きもおぼつかない
我が子だろうとそこは手抜けない さぁさぁ正々堂々と男の勝
負を
子守唄なんてもんも 読み聞かせるような本もあなたには必要ない おとぎ話はいらない
あなたが産まれるまでの ママの話をしよう
この世のどこにもない物語 俺の人生を
時に粉々にしたり ひっ掻き回してみたり
眩しすぎるってくらい キラッキラにしてくれたり
出逢うまでの俺の日々をただの予告編に全部独り占めにしたがりのママの作戦にまんまと 俺はかかったんだよ いつか君も分かるよ 全部使ったんだよ
一生の運を あの時きっと 一生分ぎゅっと 詰めてもやっといけるかいけないかくらいのラッキーの使い道と使いどころ
を
知ってたんだ
Welcome to the new world
From the tummy of such a mighty little girl
For the rest of all my days when I say beautiful, youre beautiful
lll be always talking about you or your mom, now hey
Welcome to the new world
From the tummy of such a mighty little girl
I cant find a better reason to live for, Im here for Im not gonna say it, no lIl never, lIl just keep it in my arms
Shell be always mine vou better keep that in your mind
Exception will be never made in case of any kind
I kept that oath my very first but youre the one who broke that first
Listen to me; Ill never say twice, I wont tell you much So be strong not fist more deeper in you
Ill always love you but second to your mom, of course I cant give it you
When ever voure in lack of some warmness Or maybe some time you feel hopeless
Theres nothing better to touch guarantee you that, little boy
Welcome to the new world
From the tummy of such a mighty little girl
For the rest of all my days when I say beautiful, youre beautiful
TIl be always talking about you or your mom, now heyWelcome to the new world
From the tummy of such a mighty little girl cant find a better reason to live for, Im here for Im not gonna say it, no Ill never, Ill just keep it in my arms'),
('13','Kill This Love','3:09','2019','B', 
'
天使みたいなHi 終わりは悪魔みたいなBye
毎回狂うようにHigh 後で払わないと
いけないPrice
これは答えのないTest
毎回分かっていてもYes
哀れな感情の奴隷
とんでもなく愛してる
Here I come kick in the door
一番強いものを欲しい
分かりきったあのlove
もっと差し出してみてgive me some more
分かっててすがりついて崖っぷちで
一言で言えばまたlike デレデレする
その温かい震えが 真っ赤なトキメキが
まるでheavenみたいだけど
you might not get it in
Look at me Look at you
誰がより痛いかな
You smart 誰が You are
両目に血の涙を流すことになったら
So sorry 誰が You are
どうしよう 弱い私を耐えられない
必死に両目を覆ったまま
愛の息の根を止めなくちゃ
LETS KILL THIS LOVE
LETS KILL THIS LOVE
Feelin like a sinner
Its so fire with him I go boo hoo
He said you look crazy
Thank you baby
I owe it all to you
Got me all messed up
His love is my favorite
But you plus me
sadly can be dangerous
Lucky me Lucky you
結局は嘘 we lie
So what so what
もし私があなたを消そうと
したなら So sorryIm not sorry
どうしよう 弱い私を耐え
必死に両目を覆ったまま
愛の息の根を止めなくちゃ
LETS KILL THIS LOVE
LETS KILL THIS LOVE
We all commit to love
That makes you cry
Were all making love
That kills you inside

We must kill this love
Yeah its sad but true
Gotta kill this love
Before it kills you too
Kill this love
Yeah its sad but true
Gotta kill this love
Gotta kill lets kill this love'),
('14','1999','4:49','2020','D', 
'ぼくはどうしたらいい?
眠れない夜がきて
窓の外が少しオレンジに変わる
昨日見た映画で過ぎていった時代は僕のママやパパが子供の頃
それは世紀末のクリスマスイブ
誰もが愛したこの街は知らない神様が変えてしまう
っていう話
ぼくはどうしたらいい?
眠れない夜が増え
テディベアとお話できそうだよ
街は光が流れ
子供達のあしおと
カウントダウンがはじまった ほら ほら
それは世紀末のクリスマスイブ
僕が愛していたあのひとを知らない神様が変えてしまった
それは世紀末のクリスマスイブ
誰もが愛したこの街は知らない神様が変えてしまう
っていう話
それは世紀末のクリスマスイブ
僕が愛していたあのひとを知らない神様が変えてしまった どうしてよ
夜が明ける頃迎えにゆくよ');





