//<continuation number="260">
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


scene dm1140.nss_MAIN
{
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
	#bg303021_5_娯楽施設クラブフロア=true;
	#bg303022_5_娯楽施設クラブフロア=true;
	#bg303023_5_娯楽施設クラブフロア=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1150.nss";

}


scene dm1140.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg303021_5_娯楽施設クラブフロア");
	FadeBG(0,true);

//ライト準備===========================================================
	CreateColorEXadd("絵色ライト1", 1109, "883355");
	CreateColorEXadd("絵色ライト2", 1109, "448800");
	CreateColorEXadd("絵色ライト3", 1109, "005588");
	DrawTransition("絵色ライト1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトナット透明度 = 500;
	$ライトタイム = 500;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoopLive2");
	SetAlias("プロセスライト１","プロセスライト１");

	CreateTextureSP("プロセス洗脳絵背景", 100, Center, Middle, "cg/bg/bg303021_5_娯楽施設クラブフロア.jpg");

	CreateLoopFade("プロセス洗脳光",200,true,AddRender,cg/bg/bg303024_5_娯楽施設クラブフロア.jpg,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg);
	CreateLoopFade2("プロセス洗脳レーザー",150,true,false,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg);

	CreateSurface("絵Suf",300,0,0,false);
	SetAlias("絵Suf", "絵Suf");
	SetSurface("プロセス洗脳*","絵Suf");
	Zoom("絵Suf", 0, 1500, 1500, null, true);
	Request("絵Suf", Smoothing);

	Move("絵Suf", 0, 150, @0, null, true);


	GoLoopFade("@プロセス洗脳光",100);
	GoLoopFade2("@プロセス洗脳レーザー",137);
	Request("@プロセスライト１", Start);


	Delete("上背景");

//表示開始

	SoundPlay("@dm022",0,450,true);
	SetVolumeEX("@dm*", 1000, 800, null);

	Move("絵Suf", 6000, -150, @0, null, false);

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);


	Wait(4000);

	CreatePlainSP("絵スクリーン", 300);
	Move("絵Suf", 0, 0, @0, null, true);
	Zoom("絵Suf", 0, 1000, 1000, null, true);

	Fade("絵スクリーン", 1000, 0, null, true);
	Delete("絵スクリーン");



//あきゅん「↓：照明の演出」
//http://www.youtube.com/watch?v=3xx8E6R_x1Q&feature=player_embedded#!
//http://www.youtube.com/watch?v=03pGxKJ5-wQ&feature=related

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
We go through the entrance and enter a wide room&. There's 
loud music pounding throughout it and there's a weird 
smell floating around&.

The dark room is covered in fluorescent lights spinning 
around&, and men and women all around are dancing&, talking&, and drinking&.

So it's a club&.

{	SetVolumeEX("@dm*", 3000, 450, null);}
&.&.&.Anyway&, this mystery man&.

I shove off his hand and get a good look at him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st竜峰_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm11/4000010b05">
"Oh&, sorry for doing that so suddenly&. It must've been a
 scare&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
One of the lights dance across the floor and hit the man's 
face&, and I can see his distinct&, composed features&.

I only grab a quick glimpse&, but based on his looks&, he 
might be older than me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
He's wearing a kimono&, and that makes me think of Koujaku&.

He's the opposite of Koujaku&, with a blue kimono on&. He 
even has a blue tattoo on his neck&.

He looks calm&, smiling at me&, but his narrow eyes remind 
me of those of a fox&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st竜峰_通常_shock");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm11/4000020b05">
"I thought you were having some trouble&, so I went up to
 you&. Didn't you want to come in? Am I wrong?"

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/4000030a01">
"That&.&.&. I did&."

{	St("C",740, @0,@0,"st竜峰_通常_smile");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm11/4000040b05">
"Great&. Glad I could help&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The man flashes a sweet smile&. His eyes now completely 
resemble those of a fox&. His age is still a mystery to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_normal2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/4000050a01">
"Please excuse me then&. Thank you very much&. But why did
 you do that?"

{	St("C",740, @0,@0,"st竜峰_通常_normal");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm11/4000060b05">
"Do what?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/4000070a01">
"Letting me in&. We've never met before&, have we?"

{	St("C",740, @0,@0,"st竜峰_通常_smile");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm11/4000080b05">
"No&. We're complete strangers&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/4000090a01">
"Then&, why&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	St("C",740, @0,@0,"st竜峰_通常_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm11/4000100b05">
"No need to ask&. It was just on a whim&. Isn't talking about letting a person who shouldn't be here a bad idea?"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/4000110a01">
"That's- right&."

{	St("C",740, @0,@0,"st竜峰_通常_smile");
	St("C",740, @0,@0,"st竜峰_通常_pride");
	FadeSt("C",200,true);
	FadeStPro("C", 12600, 200);
}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm11/4000120b05">
"Anyway&, it wasn't out of anything&. Don't look too deep
 into it&. This is paradise&. Go have some fun since I let
 you in&. Oh&, I almost forgot&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
The man reaches into his pocket and pulls out a card&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(16);

//背景が動き続けておりPlain処理するとおかしくなるため対処
	CreateMask("絵マスク中", 3100, 0, 0, "cg/mask/ci縦ライン_00_00.png", true);
	SetAlias("絵マスク中","絵マスク中");
	Zoom("絵マスク中", 0, 0, 1000, null, true);

	CreateTextureSP("絵マスク中/絵マスク中枠", 3110, 0, 0, "cg/mask/ci縦ライン_00_00z.png");
	CreateTextureSP("絵マスク中/絵画像", 3100, 0, 0, "cg/ef/ef娯楽施設カード_竜峰.jpg");

	CreateSE("SE01","se物体_紙_めくる01");//仮
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("絵マスク中", 200, 1000, 1000, Dxl1, true);

	Wait(300);

	Fw("fw竜峰_通常_normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm11/4000130b05">
"You can come here whenever if you have this&. Keep it with
 you&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/4000140a01">
"Huh&, but-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_smile");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm11/4000150b05">
"No 'buts'&. Always accept a person's gift&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/4000160a01">
"Okay&.&.&."

{	DeleteFw();}

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(16);

	Zoom("絵マスク中", 200, 0, 1000, Dxl1, true);
	Delete("絵マスク中*");

	CreateSE("SE01","se物体_紙_めくる01");//仮
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
I wanted to refuse it&, but the man pushed it on me and I 
ended up taking it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st竜峰_通常_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm11/4000170b05">
"Well&, I must be going now&. Until then&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
He waves his hand politely&, and disappears into the crowd&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_serious");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/4000180a01">
"What in the world was that&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/4000190a06">
"Wasn't it just a kind passerby?"

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/4000200a01">
"He was really shady&, you know&. And his card&.&.&. what do I
 do with this?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/4000210a06">
"You should keep it&. Either that or you can chase after
 him&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/4000220a01">
"Well&, that'd be pretty rude&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068]
He is the reason why I got in here in the first place&.&.&.

I inspect the card he gave me and put it into my coat 
pocket&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵演", 1000, null, true);

//あきゅん「演出：ココら辺から光麻薬を表現していく」
	CreatePlainEX("絵板写", 100);
	Zoom("絵板写", 0, 1500, 1500, null, true);
	MoveFFP1("@絵板写",50000);
	Fade("絵板写", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
&.&.&.The mystery man threw me off&, but I need to search for 
Koujaku now&.

I make my way through people who sway to the beat like 
seaweed&, and look around the dance floor&.

It's dark&, except for the flashing lights&, so it's hard to make out any faces&.

Even so&, this rhythm&.&.&.

The unsteady tempo and electric music pound into my head&, 
and I start to feel dizzy&.

I feel a weird sense of floating&, and the sound pressure 
pierces my brain; it all feels sickening&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(100);

	CreatePlainEX("絵板写", 1000);
	MoveFFP1("@絵板写",5000);

	Zoom("絵板写", 500, 1100, 1100, Dxl1, false);
	Fade("絵板写", 0, 500, null, true);

	Wait(500);

	Fade("絵板写", 500, 0, null, true);

{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0076]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/4000230a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0077]
Goosebumps pop up on my skin&, and I can feel the nausea 
build up in my throat&. I cover my mouth with a hand&.

This is bad&, am I drunk&.&.&.?

How can people stand this combination of flashing lights 
and blaring music and not get dizzy?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I look around&, and see that everyone is blasted drunk and 
swinging around&.

They dance&, half-naked&, and it looks like some of them are having sex in a corner&.

Could this be&.&.&.

&.&.&.Some drug club?

I've heard rumors about drugs exploding in popularity when I was in the Old Resident District&.

I never was interested in it&, but someone said that they 
enter some sort of dream-like state when they get high&.

This bizzare music and lighting&.
They're both so intense&.&.&.

The floor is covered in violet smoke&, and soon it's hard 
to tell which is the floor and which is the ceiling&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/4000240a06">
"Aoba&, are you okay?"

{	Fw("fw蒼葉_通常_sigh3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/4000250a01">
"&.&.&.I think I'm in trouble&.&.&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/4000260a06">
"You should go back and rest&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
My vision goes blurry&, and I can't stand myself up&.&.&.

I think of leaving the floor and start walking&.

But soon it feels like I'm walking on tofu&, rather than a 
hard floor&.

Somehow I keep myself going&.

{
//あきゅん「↓：ここで音も全てふわっと消す感じに」
	SetVolumeEX("@dm*", 200, 0, null);
	Fade("絵色黒", 100, 1000, null, true);
}
&.&.&.At least I tried to&, and my vision went dark&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
Huh?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒02");//あきゅん「ＳＥ：se人体_衝撃_転倒02」
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

//※次ファイル["dm1150.nss"]

}
