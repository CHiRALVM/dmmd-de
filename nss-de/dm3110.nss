//<continuation number="40">
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


scene dm3110.nss_MAIN
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
	$GameName = "dm3110sl.nss";

}


scene dm3110.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01天井.jpg");
	CreateTextureEXmul("絵背景上", 101, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01天井.jpg");
	CreateColorSP("絵色黒弐", 5000, "BLACK");
	CreateColorEX("絵色黒", 4000, "000000");

	Fade("絵背景上", 0, 500, null, true);
	Fade("絵色黒", 0, 700, null, true);
	DrawTransition("絵色黒", 0, 0, 300, 1000, null, "cg/data/circle_02_01_1.png", true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/1000010a05">
"&.&.&.Hey&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒弐", 2000, 0, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I wake up to the sound of someone's voice&.

But&.&.&. I'm tired&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/1000020a05">
"Hey&, get up&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵色黒弐", 500, 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I know I have to wake up&.

{	Fade("絵色黒弐", 500, 500, null, false);}
But just&.&.&.

Just a little longer&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ミンクがどかっ！とソファーを蹴る
	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1800,null,false);

	FadeDelete("絵色黒*", 100, null, false);
	FadeDelete("絵背景上", 100, null, true);

	CreatePlainSP("絵板写", 4500);
	Shake("絵板写", 300, 30, 0, 0, 0, 500, Dxl2, false);
	FadeDelete("絵板写", 300, null, true);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/1000030a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
At that instant&, I'm violently shaken awake&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵背景", 300, Dxl1, true);
	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
What?
What's going on?

{	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);}
I jump up to my feet&, and Mink is standing there&.

He just kicked me out of bed&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/1000040a05">
"Don't be a lazy ass&. We're leaving&." 


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3110sl.nss"]

}
