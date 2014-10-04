//<continuation number="180">
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


scene dm3130.nss_MAIN
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
	#bg303011_5_娯楽施設外観入り口ブラック=true;
	#bg303051_5_娯楽施設入り口フロア=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3140.nss";

}


scene dm3130.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg303011_5_娯楽施設外観入り口ブラック");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Mink continues on as if he's always known the street and 
soon walks up to an intimidating rectangular building&.

I don't know what it's for as there's no sign in front of 
it&.

I walk up to Mink's side as he continues to head towards 
the building&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm門番_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【用心棒】
<voice name="用心棒" class="用心棒" src="voice/dm31/3000010e09">
"Excuse me&, do you have proof of membership on you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
A man in a black suit stands at the door&, barring us from 
entering with his hand&.

Membership?
Of course we don't have&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//ミンクの娯楽施設会員証（黒いカード）表示（千代子

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵マスク中", 2010);//ナット名、優先度
	CreateTextureSP("絵マスク中/絵背景", 100, Center, Middle,"cg/ef/ef娯楽施設カード_ミンク.jpg");

	FadeDelete("絵板写", 100, null, false);

	CreateSE("SE01","se物体_紙_めくる01");//仮
	MusicStart("SE01",0,700,0,800,null,false);
	OpenTateMask("絵マスク中",200, 1150,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Mink searches his coat pocket and pulls out a black card&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CloseTateMask("絵マスク中",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
The suited man takes it and gives it a thorough check&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm門番_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【用心棒】
<voice name="用心棒" class="用心棒" src="voice/dm31/3000020e09">
"Confirmed&. Please hold up your Coil to the monitor over 
 there&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
He points to the confirmation monitor by the door&. Mink 
and I show our Coils in turn&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);

	Fw("fwm門番_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【用心棒】
<voice name="用心棒" class="用心棒" src="voice/dm31/3000030e09">
"&.&.&.Thank you very much&. Your IDs have been confirmed&. 
 Please come inside&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_ドア鉄_扉開く01a");
	MusicStart("SE01",0,700,0,500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
The bouncer gracefully opens the door&.

Mink&, calm and composed&, and I&, looking nervous&, pass 
through the entrance&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg303051_5_娯楽施設入り口フロア");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -423, -278, "cg/bg/l/bg303051_5_娯楽施設入り口フロア_l.jpg");
	Move("絵背景100", 1000, 0, -278, Dxl1, false);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//覇：クラブ用BGM到着後要調整
	SoundPlay("@dm022",0,200,true);

	Wait(100);

	FadeDelete("絵背景100", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Looks like this place is a club&. 

When we enter through the door&, it all turns fast paced&, 
with the guests waving their hands everywhere&, talking&, 
drinking&.

There's a single door within the room&. The low bass 
vibrates the place&, so it must be the dance floor&.

Why did we come here of all places&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/3000040a01">
"Why'd you have that card?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/3000050a05">
"I purchased someone's personal information and got their
 card since they couldn't use it anymore&. A jailer&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/3000060a01">
"Couldn't use it anymore&.&.&."

{	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/3000061a05">
"I mean that the owner's dead&."


{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/3000062a01">
"&.&.&.So you meant to come here all along&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/3000070a05">
"Yeah&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/3000080a01">
"To dance?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/3000090a05">
"Everyone here is high on the lights&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/3000100a01">
"High on the lights&.&.&. I've heard that before&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
I'm pretty sure it's a new drug that I heard rumors about 
in the Old Resident District&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/3000110a05">
"It's different from the drugs that work from inside the
 body&. It uses light to make you half-conscious&."

{	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/3000120a05">
"So you feel a sensation of being in a dream-like state&."

{	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/3000130a05">
"Since the only difference is that this drug makes you fall asleep&, you're safe from any side effects&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/3000140a05">
"However&, it requires large scale devices to make&, so it
 hasn't spread much&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/3000150a01">
"Huh&.&.&."

{	
	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/3000160a05">
"And it's behind this door&. Scared?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/3000170a01">
"Huh? No way&."

{	St("C",740, @0,@0,"stミンク_通常_smile");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/3000180a05">
"I see&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
For some reason&, Mink's face somewhat raises into a smile&,
and he starts to walk towards the door to the dancefloor&.

{	SetVolumeEX("SE*", 1000, 0, null);}
&.&.&.I'm not too sure&, but I think he's treating me like a 
kid&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵背景110", 110, 0, -132, "cg/bg/m/bg303051_5_娯楽施設入り口フロア_m.jpg");
	Move("絵背景110", 500, 0, -166, Dxl1, false);
	Fade("絵背景110", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
As I glare at Mink&, I see him stop right before the door&.

A different bouncer is standing by the door&, and Mink 
whispers something into his ear&.

The bouncer nods and holds out his right hand&.

It was difficult to make out&, but there was another door 
in the same direction&.

Mink walks over to that door&. I follow right after&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0, true);

//※次ファイル["dm3140.nss"]
}
