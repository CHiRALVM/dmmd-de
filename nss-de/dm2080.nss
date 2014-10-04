//<continuation number="140">
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


scene dm2080.nss_MAIN
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
	#bg301011_5_プラチナジェイル大通り2ゲーセン=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2090.nss";

}


scene dm2080.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	CreateColorSPadd("絵色白", 4000, "FFFFFF");

	OnBG(10,"bg301011_5_プラチナジェイル大通り2ゲーセン");
	FadeBG(0,true);

	Delete("上背景");

	CreateSE("SE01","se物体_ドア鉄_扉開く01b");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(1500);

	CreateSE("SE02","se物体_ドア鉄_扉開く01a");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	FadeDelete("絵色白", 3000, Dxl1, false);
	DrawDelete("絵色黒", 2000, 100, DxlAuto, "slide_06_00_0", true);

	SoundPlay("@dm004",0,450,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The door opens&, and on the other side&, a world seemingly 
full of game centers opens up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景101", 101,  -512, -216, "cg/bg/l/bg301011_5_プラチナジェイル大通り2ゲーセン_l.jpg");
	Move("絵背景101", 1500, -68, -4, Dxl1, false);
	Fade("絵背景101", 1500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Many black buildings decorated with simple illuminations 
line the streets&.

The atmosphere feels unrealistic and similar to Rhyme&.

{	FadeDelete("絵背景101", 500, null, true);}
The people walking around are mainly around my age&, and I 
don't see many older people&.

If it wasn't for the way the area looked&, it would be like I'm back in the Old Resident District again&.

But everything feels much more posh than the Old Resident 
District&.

Like it's all just superficial&.

If you look up&, there are countless stars twinkling in 
the sky&. One could never even dream of this in the 
Old Resident District&.

Platinum Jail's weather and time zones are all controlled&,
and it's usually set to night time&.

The idea behind it was so that guests could party any day&, any time&, apparently&.&.&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -512, -140, "cg/bg/l/bg301011_5_プラチナジェイル大通り2ゲーセン_l.jpg");
	Move("絵背景100", 1000, -512, -41, Dxl1, false);
	Fade("絵背景100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Looming in front of us is the tower symbolizing Platinum 
Jail&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/8000001a01">
"That's the Oval Tower&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
I've heard rumors about it&, but it's the first time I've 
actually seen it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/8000010a01">
"It's kinda impressive&."

{
	DeleteFw();
	FadeDelete("絵背景100", 500, null, true);

	St("C",740, @0,@0,"stノイズ_通常_normal3");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/8000020a03">
"Really? Isn't it just normal?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/8000030a01">
"It's not normal&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
In stark contrast to my fascinated reaction&, Noiz looks 
around with a bored look on his face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「コイル：ここって素材あるっけか？」
//	CreateSE("SE01","se物体_コイル_操作音02");//あきゅん「ＳＥ：se物体_コイル_操作音02」
//	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Oh&, right&, there was something else written on the 
invitation&. I still need to take a look at that&.

I bring up the invitation on my Coil&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//★バンク
	CoilBank04();

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/8000040a01">
"Is this attachment a map?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm20/8000050a06">
"It's a map of Platinum Jail&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
Ren sticks his head out of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/8000060a01">
"What's this marking?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm20/8000070a06">
"It might be a facility for us to stay at&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/8000080a01">
"The invitation also tells us where we can stay at&.
 Let's go check it out&."

{	Fw("fwノイズ_通常_normal2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/8000090a03">
"It might be a trap&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/8000100a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
A strange&, uneasy feeling has hung over us ever since the 
beginning of this&.

But we can't just stop moving because of it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/8000110a01">
"We knew we were walking into a trap even before we went
 into Platinum Jail&. We have to keep going&."

{	Fw("fwノイズ_通常_normal3");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/8000120a03">
"Hmm&. Fine by me&. I'll just follow&."

{
	FwPro("fw蒼葉_通常_cranky",3400,"fw蒼葉_通常_serious");
//	Fw("fw蒼葉_通常_sigh3");
}

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/8000130a01">
"&.&.&.Do what you want&. Ren&, could you navigate us there?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm20/8000140a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//あきゅん「コイル：ここで画面閉じる」

	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPict",300,-50,370);
	//○コイル待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I don't understand why he can't just drop that arrogant 
attitude&.

With Ren navigating&, I begin to walk to our lodgings&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm2090.nss"]

}
