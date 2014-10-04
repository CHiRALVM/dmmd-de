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


scene dm3010.nss_MAIN
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
	$GameName = "dm3030.nss";

}


scene dm3010.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm009",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 250, 100, null, "slide_01_01_1", true);

//==============================
//※ミンクの場合：
//==============================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I kept running as fast as I could to throw off the police&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE11","se人体_足音_走る01L");//あきゅん「ＳＥ：se戦闘_動作_跳躍低01」
	MusicStart("SE11",0,700,0,1000,null,true);
	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 250, 100, null, "slide_01_01_0", true);
	Wait(300);

	CreateSE("SE01","se人体_衝撃_叩く02");//あきゅん「ＳＥ：se人体_衝撃_叩く02」

	SetVolumeEX("SE11", 100, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I kept turning corner after corner - until I ran into 
someone&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/1000010a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
A policeman&.&.&.!?

In front of me was&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミンク_通常_normal");
	FadeSt("C",200,true);

	Wait(300);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/1000020a01">
"Mink!"

{
	St("C",740, @0,@0,"buミンク_通常_angry2");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/1000030a05">
"Come&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE02","se人体_足音_走り去る01複数");//あきゅん「ＳＥ：se人体_足音_走る01」
	MusicStart("SE02",0,700,0,800,null,false);

	SetVolumeEX("SE*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Mink suddenly grabs my arm and starts running&.

Is it a good idea to go along with him?

I feel uneasy about it&, but not enough to pull away&.

Mink leads me along&, and we once again dash through the
alleyways&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Wait(500);

//※次ファイル["dm3030.nss"]

}
