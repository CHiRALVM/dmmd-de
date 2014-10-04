//<continuation number="160">
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


scene dm3670.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3680lv.nss";

}


scene dm3670.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304031_5_東江タワー廊下01");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
	Wait(300);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/7000010a05">
"You're going back down with them&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/7000020a01">
"Ha? What are you saying?"

{	St("C",740, @0,@0,"stミンク_通常_serious");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/7000030a05">
"I'm fine alone from here on&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
The blood rushes to my head when I hear him say that&.

I feel like he should stop playing around&, and&.&.&.

I now knew why Mink kept his distance from me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I would always get angry at his stupid comments&, but now 
it's different&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/7000040a01">
"No&. I'm coming with you&."

{	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/7000050a05">
"&.&.&.Tch&. I don't have time for this&.&.&. Hey!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//	Wait(500);

	CreateSE("SE01","se動物_動作_羽ばたく01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Mink turns around and yells to something&, and Tori appears from the hallway&.

Mink grabs Tori and&, when he lands on his shoulder&, takes 
a chip out of him&.

The chip was two centimeters by two centimeters&, the thin 
card type&, where all the Allmate's core information is 
stored&.

{
	CreateSE("SE01","se動物_動作_蓮差込01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
He puts it into a hole on his bike and turns the key on it again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：エンジンが掛かる
	CreateSE("SE01","se乗物_改造バイク_エンジンスタート");
	CreateSE("SE11","se乗物_改造バイク_アイドリング01L");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE11",1500,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
This time the engine started&.

But he threw Tori's body relentlessly to the side&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/7000060a01">
"Hey&, what are you doing&.&.&.!"

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/7000070a05">
"I was just throwing away the frame&. He's actually in
 here&."

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm36/7000080b12">
"Don't worry&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
Tori's voice comes out of the bike's speakers&.


So that's it&. He simply switched Tori into the bike&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAMトリ_バイク_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm36/7000090b12">
"We already estimated that it would turn out this way&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwミンク_通常_normal2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/7000100a05">
"How is it?"

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm36/7000110b12">
"Not bad&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Mink lightly slaps the tank with the back of his hand and 
whispers something&.

He seems to be talking about something&, but I can't hear 
what&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常正面_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/7000120a05">
"I'm leaving the rest to you&."

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm36/7000130b12">
"Got it&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	SetVolumeEX("SE11", 2000, 0, null);


	CreateSE("SE01","se乗物_改造前バイク_走り去る");
	CreateSE("SE02","se乗物_改造前バイク_急ブレーキ01");
	CreateSE("SE03","se人体_衝撃_転倒02複数");
	CreateSE("SE04","se人体_衝撃_転倒03複数");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(3000);

	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(1000);

	MusicStart("SE03",0,700,0,1000,null,false);

	Wait(1000);

	MusicStart("SE04",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
The bike revs the engine on its own&, and runs over 
the officers with its tires&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
They try to escape in vain and the Scratch members cheer&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/7000140a05">
"Let's go&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Mink grabs my arm and slips us out of the brawling around 
us&. We head towards the staircase&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmミンクチームA_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm36/7000150e45">
"Hey&, you! The blue one! You better be as good of a back up to Mink-san as we are!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
A sound comes from behind me&, and I turn my head around 
and give a big nod&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw悪島_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/7000160b08">
"GEEEEEET BAAACK HEEEEEERE!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	OnBG(10,"bg304061_5_東江タワー階段");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 250, 100, null, "zoom_01_00_1", true);

//あきゅん「↓：ここのテキストをもっと過去形テキストに修正希望、時間経過処理を入れたい」
//※修正しました（山
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Akushima's beastly roar urges us on&, and we run up the 
stairs&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	ClearFadeAll(1500, true);
	Wait(1000);

//※次ファイル["dm3680lv.nss"]

}
