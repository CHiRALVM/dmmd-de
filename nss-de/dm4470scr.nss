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


scene dm4470scr.nss_MAIN
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

	#bg205011_0_暴露クリア=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4480sl.nss";

}


scene dm4470scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg205011_0_暴露クリア");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, 0, "cg/bg/l/bg205011_0_暴露クリア_l.jpg");

	Wait(1000);

	SoundPlay("@dm020b",3000,100,true);

	FadeDelete("上背景", 3000, null, true);

	Wait(500);

//※蒼葉、クリアの精神世界へ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
This&.&.&.

What is this?
Why am I here&.&.&.

I remember feeling something like Scrap&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm020b", 5000, 450, null);

	Move("絵背景", 1500, @0, @-217, Dxl1, false);
	FadeDelete("絵背景", 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I can hear a clear sound with a soft timbre&.

I can't tell if there's even a ceiling or a floor where I 
am&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I'm just floating in this strange open area&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//フラッシュに

//覇：火花エフェクト+ノイズ

/*
	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateTextureEXadd("絵窓/絵演出", 2001, Center, Middle, "cg/ef/efx02火花電光02.jpg");
	CreateTextureEXsub("絵窓/絵演出弐", 2000, Center, Middle, "cg/ef/efx02火花電光02.jpg");
	Zoom("絵窓/絵演出", 0, 1050, 1050, null, true);

	Rotate("絵窓/絵演出弐", 0, @0, @180, @0, Dxl3,true);

	DrawTransition("絵窓/絵演出弐", 0, 0, 400, 300, null, "cg/data/circle_02_00_0.png", true);

	SetFrequency("@dm020b", 2000, 350, null);
	Wait(2000);
	SetVolumeEX("@dm020b", 0, 1, null);
	SetFrequency("@dm020b", 0, 1000, Dxl3);

	CreateSE("SE01","se擬音_効果_火花02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("絵窓/絵演出", 200, 1000, 1000, Axl1, false);
	Fade("絵窓/絵演出", 150, 800, Dxl3, true);
	Wait(30);
	FadeDelete("絵窓/絵演出", 130, Axl1, false);

	Zoom("絵窓/絵演出弐", 250, 900, 900, Axl3, false);
	Fade("絵窓/絵演出弐", 150, 400, Dxl3, false);
	Wait(100);
	FadeDelete("絵窓/絵演出*", 100, Axl1, true);
	Delete("絵窓*");

	SetVolumeEX("@dm020b", 1500, 450, null);

	Wait(500);
*/

	SetFrequency("@dm020b", 2000, 350, null);
	Wait(300);
	SetVolumeEX("@dm020b", 300, 1, null);
	SetFrequency("@dm020b",300, 1000, Dxl3);

	CreateSE("SE01","se擬音_効果_火花02");
	MusicStart("SE01",0,400,0,1800,null,false);

	CreateColorSPadd("絵フラッシュ赤", 5000, "RED");
	Wait(30);
	FadeDelete("絵フラッシュ赤", 100, null, true);

	SetVolumeEX("@dm020b", 2000, 450, null);

	SetFrequency("@dm020b", 2000, 350, null);
	Wait(1000);
	SetVolumeEX("@dm020b", 300, 1, null);
	SetFrequency("@dm020b",300, 1000, Dxl3);

	CreateSE("SE01","se擬音_効果_火花02");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateColorSPadd("絵フラッシュ赤", 5000, "RED");
	Wait(30);
	FadeDelete("絵フラッシュ赤", 100, null, true);

	CreateSE("SE02","se擬音_効果_火花02");
	MusicStart("SE02",0,600,0,1400,null,false);

	CreateColorSPover("絵フラッシュ赤", 5000, "RED");
	Wait(30);
	FadeDelete("絵フラッシュ赤", 100, null, true);

	SetVolumeEX("@dm020b", 2000, 450, null);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Sometimes the tone becomes unstable&, and sparks start to 
fly throughout the air&.

I smell traces of something burning&.
Parts of it graze my cheek&.

But the music keeps ringing on&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4480sl.nss"]

}
