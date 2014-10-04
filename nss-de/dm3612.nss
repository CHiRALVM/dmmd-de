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


scene dm3612.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	$GameName = "dm3613.nss";

}


scene dm3612.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

//※演出：背景要確認
	OnBG(10,"bg304091_5_東江タワー中ホール");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);


	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When I open my eyes&, I'm in Toue's white room&.
Mink is standing right next to me&.

We made it&.&.&.
It went more smoothly than I expected&.

Was Mink only trapped by those memories of the past?

I thought I saw something he was holding even deeper inside
of him&, though&.&.&.

Still worried for Mink&, I scan the room&.

&.&.&.Toue isn't here&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1200010a01">
"Where did Toue go? We have to go after him&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(300);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",300,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011a]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1200020a05">
"&.&.&.No&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1200030a01">
"Huh?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：肩を掴む
	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Mink grabs my shoulder&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1200040a05">
"There's something else we need to do&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainEX("絵板写朧", 1000);
	SetShade("絵板写朧", SEMIHEAVY);

	CreatePlainSP("絵板写", 20000);

	CreateColorSP("絵色黒", 1990, "000000");
	DrawTransition("絵色黒", 1, 0, 700, 100, null, "cg/data/slide_05_00_0.png", true);

	St("C",1740, @0,120,"fuミンク_通常_normal2");
	FadeSt("C",0,true);
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 2000, 2000, null, true);

	Fade("絵板写朧", 0, 1000, null, true);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
The dull eyes held a certain shine to them&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：調整しました」

/*
	Wait(300);

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	DrawTransition("絵色白", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Wait(4000);
*/

//※次ファイル["dm3613.nss"]

}
