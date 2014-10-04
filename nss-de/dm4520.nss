//<continuation number="20">
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


scene dm4520.nss_MAIN
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
	#bg304012_5_東江タワー全景崩壊後=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4530h.nss";

	//EFWIN吊るし素材アンロック
	Request("@EFWIN/SE*", UnLock);

}


scene dm4520.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg304022_5_東江タワー前通り崩壊中");
	FadeBG(0,true);

	CreateTextureSP("ゆれ", 100, Center, Middle, "cg/bg/bg304022_5_東江タワー前通り崩壊中.jpg");
	Request("ゆれ", Smoothing);
//	Shake_Loop("@ゆれ","shake01");

	Shake_Loop("@ゆれ","shake01");
	MoveFTP1("@ゆれ",3500,10,2);

	CreateMovieSPsub("煙１", 500, 0, 0, true, true, "dx/mvk100.ngs");
	Zoom("煙１", 0, 5000, 5000, null, true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
We go down the emergency elevator to the first floor and 
burst out of the tower's entrance&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE12","se物体_東江タワー_地鳴り01L");
	MusicStart("SE12",1000,700,0,1000,null,true);

	DrawDelete("絵色黒", 150, 100, null, "slide_01_01_1", true);

	CreateSE("SE02","se物体_東江タワー_爆発01");
	MusicStart("SE02",0,300,0,1000,null,false);

	BGPlainShake(100,1000,10,0,0,2,1000,null,true);

	CreateSE("SE02","se物体_東江タワー_爆発01");
	MusicStart("SE02",0,300,0,1000,null,false);
	BGPlainShake(100,1000,30,0,0,2,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Explosions burst from the top of the tower and debris 
falls to the ground down below&. A mass of people are 
huddled around making noise&.

Without stopping or turning around to look at the tower&, I focus on escaping&, putting all of my strength into holding up Clear&.

I hurry in fear of the tower collapsing&, and I want to let Clear rest more than anything&.

The only place I can think of going to is Glitter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/2000010a01">
"&.&.&.Hold on&, Clear&.&.&.!"

//※演出：クリア崩壊
{	Fw("fwクリア_崩壊_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/2000020a04">
"Yes&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, 0, 0, "cg/bg/l/bg301031_5_プラチナジェイル通り路地01_l.jpg");

	Delete("煙*");
	Delete("@ゆれ*");
	Delete("プロ*");
	Request("@EFWIN/SE*", UnLock);
	SetVolumeEX("@EFWIN/SE**", 2000, 0, null);

	Shake_LoopDelete();

	Wait(1000);

	DrawDelete("絵黒幕", 250, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Because of Clear's current condition&, some people stare at us as we make our way through the alleys&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ClearFadeAll(500, true);

//※次ファイル["dm4530h.nss"]

}
