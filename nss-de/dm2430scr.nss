//<continuation number="0">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm2430scr.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼演出上の処理を解除
	$SYSTEM_menu_lock=false;
	SetPan("@dm001*", 0, 0, null);
	SetFrequency("@dm001*", 0, 1000, null);

	//▼初見フラグを立てる
	#dm2430scr_First=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2440sl00.nss";

}


scene dm2430scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 1000, "000000");
	CreateTextureEX("絵妄想世界", 100, -511, -520, "cg/bg/m/bg101011_1_旧住民区通り表_m.jpg");
	Fade("絵妄想世界", 0, 0, null, true);

//あきゅん「※：右クリックとかできちゃうと興ざめなので封印、一回見たら封印しない」
	if(#dm2430scr_First==true){
	}else{
	$SYSTEM_menu_lock=true;
	}

	FadeDelete("上背景", 0, null, true);

//※世界がぐにゃっと歪み、ノイズの別の妄想世界へ突入
//※演出（可能であれば）：
//プラチナジェイルだったり旧住民区だったり今までの背景が出てくるのですが、
//みんな色がかなりおかしいことになってます。
//そこに出てくる立ち絵も羽賀さんだったりヨシエだったり様々な人が出てきますが、
//みんな肌の色が緑だったり青だったりおかしいです。
//また、顔を線でグチャグチャにされてるキャラがいたり。
//蒼葉もどこかおかしい状態でｓｔが表示されるといいです。
//軽く早送りをしている感じでバーッと背景とｓｔが入れ替わり立ち代わり表示されるといいです。
//最後にノイズのｓｔ表示（これもおかしくなってる感じで）
//ＢＧＭ無し、音声無しです。かなりバグっぽい雰囲気です。
//テキストは「あああてヴぇｗ；た」とか適当に流せれば流したいです。

	//CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界01.jpg");
	//Fade("絵妄想世界", 0, 1000, null, true);

	Wait(2000);

	CreateColorSP("絵色白", 5000, "FFFFFF");
	Wait(30);
	Fade("絵色白", 70, 0, null, true);

	Wait(1000);

	CreateSE("SE01","se擬音_精神_超音波01L");
	MusicStart("SE01",0,700,0,300,null,true);

	Wait(3000);

	CreateColorEX("絵色黒", 4000, "000000");
	DrawTransition("絵色黒", 0, 0, 500, 10, null, "cg/data/mosaic_01_00_0.png", true);

	SetVolumeEX("SE*", 100, 10, null);

	CreateTextureEX("絵偽題名", 1110, Center, Middle, "cg/sys/title/Nitro+CHiRAL-logo.jpg");
	Fade("絵偽題名", 2000, 1000, null, true);

	WaitKey(2000);

	Fade("絵色黒", 0, 1000, null, true);
	Wait(30);
	Fade("絵色黒", 0, 0, null, true);

	CreatePlainEX("絵板写", 1900);
	Rotate("絵板写", 0, @0, 180, @0, null,true);

	Fade("絵板写", 0, 1000, null, true);
	DrawTransition("絵板写", 0, 0, 200, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Wait(2000);

	Fade("絵板写", 0, 0, null, true);
	Wait(100);
	Fade("絵板写", 1000, 0, null, true);
	Wait(50);
	DrawTransition("絵板写", 0, 0, 500, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Fade("絵板写", 0, 1000, null, true);

	Wait(500);

	Fade("絵色黒", 0, 1000, null, true);
	Fade("絵板写", 0, 0, null, true);
	Wait(30);
	Fade("絵色黒", 0, 0, null, true);

	Wait(100);

	Fade("絵偽題名", 0, 0, null, true);

	Wait(1000);

	SetVolumeEX("SE*", 0, 700, null);
	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵色白", 0, 0, null, true);
	SetVolumeEX("SE*", 100, 10, null);

	Wait(2000);

	DrawTransition("絵偽題名", 0, 0, 1000, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Fade("絵偽題名", 2000, 1000, null, true);



	DrawTransition("絵偽題名", 0, 0, 250, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Fade("絵妄想世界", 0, 1000, null, true);
	Wait(30);
	Fade("絵妄想世界", 70, 0, null, true);

	Fade("絵偽題名", 0, 0, null, true);

	DrawTransition("絵妄想世界", 0, 0, 750, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Fade("絵妄想世界", 0, 1000, null, true);
	Wait(30);
	Fade("絵妄想世界", 70, 0, null, true);

	Wait(2000);

	DrawTransition("絵妄想世界", 0, 0, 1000, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Fade("絵妄想世界", 2000, 10000, null, true);


	CreateSE("SE01","se環境_喧騒_旧人民区青柳通り01L");
	MusicStart("SE01",1000,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
//Nearly halfway, there are NO EXTRA LINES after lines. Keep them in.
//This is the freaky Noiz scene with almost all repeated lines. May need to check all of these for consistency
<PRE @box0>
[text0010]
The best way to travel around here is by foot&.
It's what everyone does&.

</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 3000, 450, null);
	SoundPlay("@dm001",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011a]
The transportation system in the Old Resident District is 
pretty bad&.

There's a big street running through the center of the 
city&, and sometimes there may be a bus or a train&, or 
even a taxi&.

</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011b]
The transportation system in the Old Resident District is 
pretty bad&.

There's a big street running through the center of the 
city&, and sometimes there may be a bus or a train&, or 
even a taxi&.

</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――


	CreateTextureEX("絵妄想世界真", 2100, Center, Middle, "cg/ef/efbgノイズ妄想世界01.jpg");
	Zoom("絵妄想世界真", 0, 1500, 1500, null, true);

	DrawTransition("絵妄想世界真", 0, 0, 500, 10, null, "cg/data/mosaic_01_00_0.png", true);
	Fade("絵妄想世界真", 0, 1000, null, true);
	SetPan("@dm001*", 0, -500, null);
	Wait(30);
	SetPan("@dm001*", 0, 0, null);
	Fade("絵妄想世界真", 70, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011c]
But they also can be cancelled or delayed without notice&, 
so they're not really reliable&.

The roads might be blocked at any time too&, so nobody 
trusts public transportation&.

Even now there are hardly any cars on the street&. There's 
only one taxi waiting in vain and some junked cars parked 
by the roadside&.

</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	SetFrequency("@dm001*", 0, 200, null);
	Zoom("絵妄想世界真", 0, 1000, 1000, null, true);
	Fade("絵妄想世界真", 0, 1000, null, true);
	Wait(30);
	DrawTransition("絵妄想世界真", 0, 0, 750, 10, null, "cg/data/mosaic_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
The sidewalk is filled with people coming and going&.
{
	SetVolumeEX("@dm*", 0, 0, null);
	SetFrequency("@dm001*", 0, 1000, null);
	SetVolumeEX("SE*", 150, 0, null);
	DrawTransition("絵妄想世界真", 0, 750, 1000, 100, null, "cg/data/mosaic_01_00_0.png", true);
}
The most reliable thing you could have were your own legs&.

</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	Proc_dm2430scr_02();
	PrintGO("上背景", 5000);
	CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界02.jpg");
	Fade("絵妄想世界", 0, 1000, null, true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
"Thief!"

"What are you doing in someone else's room!?"

"Welcome back&."

"Wha&.&.&.!? Who are you? Why are you in my room&.&.&.?"

</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	Proc_dm2430scr_01();
	CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界03.jpg");
	Fade("絵妄想世界", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Granny drives me off and I return to the table with the doughnuts&. Then&, I fill everyone's teacups and return to my own seat&. After a while&, Granny comes to sit down too&. "When people are full&, their anger will naturally subside&. Eat already&." "So these are for us?" 匂いｗｄｌｈったぜ。タエさｈｍのドーナツはｓｌらｓ；別なんだえｔ；な」「いいから早ｇｌｗをｓっｐ」婆ちゃんのドーナｒぼっｌｗｂｍく知っｖｋ紅ｖくぁｐんｍｗゴへ手ｂをｗｐｑす。男ｂｌｗんっｂｍｗｌクはｖまえあｌば；あｍんｈ；あ；ｚば；あｖｍｑｐ．ｐくぁｇｋｊｈｇｆｄｍｗ；ｌ

</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界04.jpg");
	Fade("絵妄想世界", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
「お　前……　　　　年　端も行　　　　　　　　　　　　　か　　　　　　ない女　の子　　　　に何　　　　やって　ん　だ　　　　　　　　　　　　　　　　　　　　　　　　　よ」

「　　何　　　　　　　が　　　　」

「　　　だ　って　　い　きなり　　　手に　ち　ゅっ　　　　　　て…　…　　驚く　っ　つか引　　　　　　くだ　ろ、　　普　　　　　通　　　　　」

「別に　　　　　　変　な　こ　　　　　と　じ　　　ゃ　　な　い　　だ　　　　ろ」


</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界05.jpg");
	Fade("絵妄想世界", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
程


無


く　　　し　て、　　　　　　路


　地　　　の　一
　
　
　　　　　　　　　　　　　　　　　　　　　　　角がう　
　　　　　　　　　　　　　　　　　　　　　　　
　　　　　　　　　　　　　　　　　　　　　　　
　　　　　　　　　　　　　　　　　　　　　　　　っ　　　　すら
　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　と光り始　　　め　　　　　　た。

</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界06.jpg");
	Fade("絵妄想世界", 0, 1000, null, true);

	CreateSE("SE01","se物体_電話_鳴る平凡01L");
	MusicStart("SE01",0,1500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
"Aren't you 'Ruff Rabbit'? Mujina's Rhymer team? Looks like you made it all the way over here&."
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
「ライムの予想屋とかやってるらしいが、そんｓｌｖとでんｌ；みっｂ；い金稼いで喜ｌえあｑゃねーよ」
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
「＊＊＊」
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

<PRE @box0>
[text0063]
「△■＊＊＋＃＃＃ｂｌん＠＠＠＊＊＊＊＊＊■■■■　　　　■■■■■■■■■」
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――


	CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界07.jpg");
	Fade("絵妄想世界", 0, 1000, null, true);

	CreateSE("SE01","se物体_電話_切れる平凡");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
"Isn't Dry Juice the largest Rib team?"
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071a]
"Isn't Dry Juice the largest Rib team?"
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071b]
"Isn't Dry Juice the largest Rib team?"
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071c]
"Yeah&."
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071d]
"Yeah&."
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071e]
"Yeah&."
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071f]
"Yeah&."
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071g]
"So a lot of people are in it&. So that means there's crew  all around this entire island&."
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071h]
"So a lot of people are in it&. So that means there's crew  all around this entire island&."
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
"So a lot of people are in it&. So that means there's crew  all around this entire island&."
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
"So a lot of people are in it&. So that means there's crew  all around this entire island&."
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
"So a lot of people are in it&. So that means there's crew  all around this entire island&."
</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界08.jpg");
	Fade("絵妄想世界", 0, 1000, null, true);

//○○○○◎○○○○●○○○○◎○○○○●○○○○
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
"Both of you&, shut up&.""Both of you&, shut up&.""Both of you&, shut up&."
"Both of you&, shut up&.""Both of you&, shut up&."
"Both of you&, shut up&.""Both of you&, shut up&.""Both of you&, shut up&."<k><?>
shutupshutupshutupshutupshutup
shutupshutupshutup<k><?>
ううううううううううううううううううううううううううううう


</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界09.jpg");
	Fade("絵妄想世界", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Clinging to the walls&, I can hear the faint sound of peopleinside&.
　
　
　
　クリア


の




言った

　
通りだ
。


人の


気
ｇｗ

ｂ，
　
あ、ｄｖ。





　
いよ
い
ｌｑｗｐ


　
　
　
ｃ


</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界10.jpg");
	Fade("絵妄想世界", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　「ガがあｒｄ；れｐ；ｖ．あvァh，tbｂゎｐ」「ガがあｒｄ；れｐ；ｖ．あvァh，tbｂゎｐ」「ガがあｒｄ；れｐ；ｖ．あvァh，tbｂゎｐ」「ガがあｒｄ；れｐ；ｖ．あvァh，tbｂゎｐ」「ガがあｒｄ；れｐ；ｖ．あvァh，tbｂゎｐ」「ガがあｒｄ；れｐ；ｖ．あvァh，tbｂゎｐ」「ガがあｒｄ；れｐ；ｖ．あvァh，tbｂゎｐ」「ガがあｒｄ；れｐ；ｖ．あvァh，tbｂゎｐ」「ガがあｒｄ；れｐ；ｖ．あvァh，tbｂゎｐ」


</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界11.jpg");
	Fade("絵妄想世界", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
AAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH


</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界14.jpg");
	Fade("絵妄想世界", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
"If you can't stand it that much&, then hit me&."


　　　　　　　　　　　　　　　　　　　　　「もしどうしてがｋｗｈ；なら、ぁ３ｐ，れよ」





「もしどうｑ
をｐふぁｌば。；なよｑｐｌp　　わ
＠　　　　ば」


</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――

	CreateTextureSP("絵妄想世界", 100, Center, Middle, "cg/ef/efbgノイズ妄想世界15.jpg");
	Fade("絵妄想世界", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■



■■■■■■■
　　　　　　　　　　　　■■■■
　　　　　　　　　　　。

　　　　　　　■　■　　　　　　　　　■■■　　　　■■
　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　■■■　　　■
■

■


</PRE>
	SetText();
	TypeBeginNL(0);//―――――――――――――――――――――――――――


//※次ファイル["dm2440sl00.nss"]

	SetVolumeEX("@dm*", 0, 0, null);
	ClearFadeAll(0, true);

}