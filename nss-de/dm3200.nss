//<continuation number="30">
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


scene dm3200.nss_MAIN
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
	#bg301021_5_プラチナジェイル中通り3ブラック=true;
	#bg306011_5_倉庫外観通り=true;
	#bg306021_5_倉庫内部入り口側=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3210.nss";

}


scene dm3200.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I rush out of the entryway and search for Mink's figure 
right away&.

I didn't think he'd wait for me&, and true enough he 
actually didn't&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/0000010a01">
"What the hell&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301021_5_プラチナジェイル中通り3ブラック");
	FadeBG(0,true);

	SetVolumeEX("SE*", 1000, 0, null);

	Wait(500);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I run far from the entrance and race after Mink's back&.

I finally catch up with him and my running turns into 
walking&.

For some reason&, we can't do anything but silently keep 
moving&.

All Mink wants is for me to follow him quietly&.

Of course I don't agree with that&, but I know that even if I speak it won't go anywhere&.

So that's why I'm just going to have to obey his wishes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg306011_5_倉庫外観通り");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Mink steadily walks off Main Street&, heading through narrow
backstreets until we enter a secluded section&.

We're getting close to the outer walls of Platinum Jail&. 
Without any flashy buildings or shops&, the backstage 
warehouses start to fill up&.

What's in this place?
Does it have to do with the call he made earlier?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -260, -365, "cg/bg/l/bg306011_5_倉庫外観通り_l.jpg");
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Mink comes up close to a single warehouse&, quickly walks 
to the back entrance&, and operates his Coil&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE04","se物体_コイル_操作音01");
	MusicStart("SE04",0,700,0,500,null,false);

	Wait(500);

	CreateSE("SE05","se物体_ドアＰＪゲート_扉開く01");
	MusicStart("SE05",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
The door opens and I can feel the presence of people&.

&.&.&.And right inside&, people are standing there&.

They're on watch&, stiff&.
&.&.&.But&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm005",0,450,true);

	Fw("fwmミンクチームA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm32/0000020e45">
"Mink-san!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
His voice raises in joy&.
On the other side of the door is the smiling face of a man&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_angry2");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/0000030a05">
"Don't shout&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Mink gives a passing glare&, and gestures with one hand that
we should come in quickly so he needs to move out of the 
way&.

The man stumbles backwards&, and Mink and I come inside&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//※次ファイル["dm3210.nss"]

}
