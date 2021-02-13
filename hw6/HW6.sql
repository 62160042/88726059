    CREATE TABLE Artist (
        artistname VARCHAR(100) PRIMARY KEY,
        membership VARCHAR(200) NOT NULL
        );

    CREATE TABLE Style(
        stlyename VARCHAR(100)  PRIMARY KEY
        );
    
    CREATE TABLE Music(
        Name_song VARCHAR(100) PRIMARY KEY,
        song_lenght VARCHAR(50) NOT NULL,
        Lylics VARCHAR(1000) NOT NULL,
        Album_name VARCHAR(100) NULL 
        );

    CREATE TABLE Album(
        Album_name VARCHAR(100)  PRIMARY KEY,
        Release VARCHAR(100) NOT NULL,
        Photo_album VARCHAR(100) NULL     
        );

    INSERT INTO Artist (artistname,membership)
    VALUES ('Aimer','1'),
            ('Back-number','4'),
            ('LISA','1');

    INSERT INTO Style (stlyename)
    VALUES ('Rock'),
            ('POP-Rock'),
            ('J-Pop')
           ;
    
    INSERT INTO Music (Name_song,Album_name,Lylics,Song_lenght)
    VALUES ('StarRingChild','Midnight Sun','Please hear me
I want to tell you
Please sing to me
I wanna hear your voice
Star・Ring・Child

Sunao ni akereba Sawareru me o
Otonabita serifu no kage ni Kakushita
Senobi shite Nozoita machi wa yureteru
Toozakaru ano hi no yakusoku mo
Iroasete shimaeba Surikaerareru

Hontou to uso o mazeta Tsuyogari wa
Miushinatta koe o Kakusenai

Star・Ring・Child
Kono furueta kodou nigireba Oto o naraseru
Mada chiisakatta koro no te ga Egaku subete ni
NOOTO kara hamidasu Mirai ga ita

ZARA tsuita hibiki Bakari erande
Miminari Yamazu NOIZU Mata kabuseru

Yuganda maku wa Mou shin’i mo hiroenai mama
Yowasa o wasureta Ashioto RIZUMU
Muku na ai no uta sae Kakikeshite yuku
Enjiru imi wa doko mo Bureta mama
Miushinatta sen wa Tsunagenai

Chirakatta hoshizora ni Niteiru negai ga Kowaku mieta
Okubyou ni kazatta kotoba Furimawashite mo Doko mo kasuranai

Star・Ring・Child
Kono furueta karada mo mada Oto o naraseru
Ano chiisakatta koro no te ga Egaku subete ni
NOOTO kara hamidasu Negai ga ita

Te o furanai kodomo tachi ga Owarasenakatta
Suki ni hirogaru takara chizu
Ano basho de kotae nante Kakera sae iranakatta
Ichibyou ni tsumeta sekai

Kakedashita Mujaki na iro wa
Butsukariatte mo Nuriageru oto wasurenai
Nazorareta kotae nante Koko ni hitsuyou nai kara
Ichibyou ni mieta sekai o Tsugi e
','00:05:28'),
        ('LAST STARDUST','DAWN','furishikiru tsuyoi ame egaita yume no hate
furueru kata nurashi arukitsudzuketa

surikireta chiisa na te sukima o umeru made
iro no kieta kioku hiroiatsumeta

itoshisa yasashisa subete nagedashitemo ii
nakushita mono mitsuketa nara

kizutsuku no ga sadame dato shitemo kokoro wa mada iro o hanatsu
saigo no Stardust maiagare Dust to Dust, Ash to Ash kanata e
negai no hahen yo todoke

toozakaru tooriame kieteku yoru no kaze
kodoku dake ga soba ni tatazundeita

eranda tadashisa subete machigai demo ii
shinjita mono mamoreta nara

kizu darake no garasu no kokoro ga wasurekaketa netsu o tomosu
saigo no Stardust maiagare Dust to Dust, Earth to Earth kanata e
negai no hahen yo towa e

kizutsuku no ga sadame dato shitemo kokoro wa mada iro o hanatsu
sayonara Judas hai ni nare Dust to Dust, itsuka no yowasa e
kizu darake no garasu no kokoro ga wasurekaketa netsu o tomosu
saigo no Stardust maiagare Dust to Dust, Ash to Ash kanata e
','00:05:18'),
        ('Mabataki','Magic','Shiawase to wa hoshi ga furu yoru to mabushii asa ga
kurikaesu you na mono ja naku
taisetsu na hito ni furikakatta ame ni kasa o saseru koto da

nani no tame ni iki te iku no ka
kotae nante naku te ii yo
ai tai hito to hitsuyou na mono o sukoshi mamore tara

senobi mo herikudari mo se zu ni
boku no sonomama de itoshii kimochi o utae ta nara

shiawase to wa hoshi ga furu yoru to mabushii asa ga
kurikaesu you na mono ja naku
taisetsu na hito ni furikakatta ame ni kasa o saseru koto da
mabataki mo se zu ni me o korashi te mo mitsukaru rui no mono ja nai
dakara soba ni i te hoshii n da

yume no tame ni ikirare ta hito
soreta michi ga seikai datta hito
dare ka no tame ni tsuiyashi ta hito
jibun o iki ta hito

dare ni mo nare nakatta kedo
tada kyou mo boku o hitsuyou da to omotte kure tara

shiawase to wa hoshi ga furu yoru to mabushii asa ga
kurikaesu you na mono ja naku
taisetsu na hito ni furikakatta ame ni kasa o saseru koto da
mata yowasa mitsukete tomadou boku ni
demo sore ga dekiru darou ka
me o toji te mitsuketa basho de

shiawase to wa hoshi ga furu yoru to mabushii asa ga
kurikaesu you na mono ja naku
taisetsu na hito ni furikakatta ame ni kasa o saseru koto da
soshite itsunomanika boku no hou ga mamorarete shimau koto da
itsumo soba ni itsumo kimi ga ite hoshii n da
','00:02:41'),
        ('Crossing Field','Landspace','Mitomete ita okubyou na kako
Wakaranai mama ni kowagatte ita
Ushiro no jibun ga genjitsu wo ima ni utsusu

[Pre-Chorus 1]
Ikutsu mono sora wo kaita koko wa kitto
Hakanai kokoro midashite

[Chorus 1]
Yume de takaku tonda karada wa
Donna fuan matotte mo furiharatte iku
Nemuru chiisana omoi hirogari dashite
Kizuku yowai watashi kimi ga ireba

Kurai sekai tsuyoku ireta
Nagai yume miru kokoro wa sou eien de

[Post-Chorus]
I wanna always be with you
I give you everything I have

[Verse 2]
Sagashite ita michibiku hikari
Furere ba subete omoidashite
Kakegae no nai taisetsu na ima wo kureru

[Pre-Chorus 2]
Me wo toji sekai wo shitta
Sore wa itsumo atatakai no ni itakute

[Chorus 2]
Tsunagu tashika na negai kasanari atte
Mieru mayoi wa ugoki hajimeta
Kimi wo mamoritakute seou kizu wa
Fukai nemuri no naka tadayotta

Kawaranai yakusoku datta
Futari shinjita kizuna wa sou senmei ni

[Instrumental]

[Bridge]
Koe ga todoku made namae wo yonde
Deaeta kiseki kanjitai motto

[Chorus 1]
Yume de takaku tonda karada wa
Donna fuan matotte mo furiharatte iku
Nemuru chiisana omoi hirogari dashite
Kidzuku yowai watashi kimi ga ireba

Kurai sekai tsuyoku ireta
Nagai yume miru kokoro wa sou eien de

[Post-Chorus]
I wanna always be with you
I wanna hold you tight right now
I swear I will wipe your tears
I will give you everything I have
','00:04:08'),
        ('Gurenge','Leo-Nine','tsuyoku nareru riyuu wo shitta
boku wo tsurete susume
รับรู้แล้วเหตุผลที่ต้องแข็งแกร่งขึ้น
ให้มันนำพาตัวฉัน ก้าวไปข้างหน้า

dorodarake no soumatou ni you
kowabaru kokoro furueru te wa
tsukamitai mono ga aru
sore dake sa
ภาพย้อนอดีตที่เต็มไปด้วยคราบโคลน
หัวใจที่มันแข็งกร้าว มือที่มันสั่นเทานั้น
ยังมีสิ่งที่อยากคว้าไว้อยู่
เพียงแค่นั้น

yoru no nioi ni
(I spend my day and night)
sora nirandemo
(Staring into the sky)
kawatte ikeru no wa jibun jishin dake
sore dake sa
กลิ่นในยามราตรี
(ฉันใช้เวลาทั้งวันทั้งคืน)
แม้จะมองไปยังท้องฟ้า
(จ้องมองไปบนท้องฟ้า)
สิ่งที่เปลี่ยนไปก็มีเพียงแค่ตัวเราเอง
เพียงแค่นั้น

tsuyoku nareru riyuu wo shitta
boku wo tsurete susume
รับรู้แล้วเหตุผลที่ต้องแข็งแกร่งขึ้น
ให้มันนำพาตัวฉัน ก้าวไปข้างหน้า

doushitatte kesenai yume mo tomarenai ima mo
dareka no tame ni tsuyoku nareru nara
arigatou kanashimi yo
sekai ni uchinomesarete makeru imi wo shitta
guren no hana yo sakihokore
unmei wo terashite
ไม่ว่ายังไงก็ตามทั้งความฝันที่ไม่อาจลบเลือนได้ ทั้งปัจจุบันที่ไม่อาจหยุดยั้งได้
ถ้าแข็งแกร่งขึ้นได้เพื่อใครสักคนแล้วล่ะก็
ขอบคุณนะ เจ้าความโศกเศร้า
ได้รู้ความหมายของความพ่ายแพ้จากการที่ถูกโลกบดขยี้จนยับเยิน
ดอกบัวสีชาดเอ๋ย จงเบ่งบานอย่างภาคภูมิ
สาดส่องไปยังโชคชะตา

inabikari no zatsuon ga mimi wo sasu
tomadou kokoro yasashii dake ja
mamorenai mono ga aru
wakatteru kedo
เสียงฟ้าผ่าที่แทรกผ่านเข้ามาในหู
หัวใจวอกแวก ยังมีสิ่งไหนที่ไม่อาจปกป้องไว้ได้
เพียงแค่ใช้ความอ่อนโยนอีกบ้าง
เข้าใจดี แต่ว่า

suimenka de karamaru zenaku
sukete mieru gizen ni tenbatsu
Tell me why, Tell me why, Tell me why, Tell me...
I dont need you!
itsuzai no hana yori
idomi tsuzuke saita ichirin ga utsukushii
ความดีและความชั่วพัวพันกันอยู่ใต้น้ำ
โทษทัณฑ์จากสวรรค์ที่มองทะลุไปถึงความเสแสร้ง
บอกฉันทีว่าทำไม บอกฉันทีว่าทำไม บอกฉันทีว่าทำไม บอกฉันที...
ฉันไม่ต้องการหรอก!
ดอกไม้ที่มีพรสวรรค์โดดเด่น
ไม่สวยงามเท่าดอกไม้บานที่ยังคงท้าทายต่อไป

ranbou ni shikitsumerareta togedarake no michi mo
honki no boku dake ni arawareru kara
norikoete miseru yo
kantan ni katazukerareta mamorenakatta yume mo
guren no shinzou ni ne wo hayashi
kono chi ni yadotteru
เพราะเส้นทางที่เต็มไปด้วยขวากหนามปกคลุมไว้อย่างบ้าระห่ำ
จะปรากฏให้เห็นเพียงแค่ฉันผู้จริงจังเท่านั้น
จะก้าวข้ามไปให้ดู
จัดการได้อย่างง่ายดาย แม้แต่ความฝันที่ปกป้องเอาไว้ไม่ได้
หยั่งรากลงไปในหัวใจสีชาด
สถิตอยู่ในสายเลือดนี้

hitoshirezu hakanai chiriyuku ketsumatsu
mujou ni yabureta himei no kaze fuku
dareka no warau kage dareka no nakigoe
daremo ga shiawase wo negatteru
จุดจบจะสลายหายไปภายในชั่วขณะอย่างลับ ๆ
ถูกฉีกขาดอย่างโหดเหี้ยม สายลมแห่งเสียงกรีดร้องพัดพา
เงาหัวเราะของใครบางคน เสียงร้องไห้ของใครบางคน
ไม่ว่าใครต่างก็ปรารถนาถึงความสุขกันทั้งนั้น

doushitatte kesenai yume mo tomarenai ima mo
dareka no tame ni tsuyoku nareru nara
arigatou kanashimi yo
sekai ni uchinomesarete makeru imi wo shitta
guren no hana yo sakihokore
unmei wo terashite
ไม่ว่ายังไงก็ตามทั้งความฝันที่ไม่อาจลบเลือนได้ ทั้งปัจจุบันที่ไม่อาจหยุดยั้งได้
ถ้าแข็งแกร่งขึ้นได้เพื่อใครสักคนแล้วล่ะก็
ขอบคุณนะ เจ้าความโศกเศร้า
ได้รู้ความหมายของความพ่ายแพ้จากการที่ถูกโลกบดขยี้จนยับเยิน
ดอกบัวสีชาดเอ๋ย จงเบ่งบานอย่างภาคภูมิ
สาดส่องไปยังโชคชะตา

unmei wo terashite
สาดส่องไปยังโชคชะตา
','00:03:58');
       


    INSERT INTO Album (Album_name,Release_y,Photo_album)
    VALUES ('Midnight Sun','June 25, 2014','https://upload.wikimedia.org/wikipedia/en/thumb/2/27/Aimer_Midnight_Sun.jpg/330px-Aimer_Midnight_Sun.jpg'),
            ('DAWN','July29,2015','https://upload.wikimedia.org/wikipedia/en/thumb/6/60/Aimer_Dawn.jpg/330px-Aimer_Dawn.jpg'),
            ('Magic','2016','https://images-na.ssl-images-amazon.com/images/I/9145Qjhv4cL._SL1500_.jpg'),
            ('Landspace','2012-2013','https://shirodesu.net/wp-content/uploads/2018/07/Lisa-Landspace.jpg'),
            ('Leo-Nine','2019','https://www.generasia.com/w/images/thumb/e/e8/LiSA_-_LEO-NiNE_lim_B.jpg/324px-LiSA_-_LEO-NiNE_lim_B.jpg');
            

