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


scene dm1400.nss_MAIN
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

	//▼障子演出に使用したフラグを念のためリセット
	$MugenKairouProcFirst=false;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1410.nss";

}


scene dm1400.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景",19000);
	SoundPlay("@dm017",0,450,true);

	if($DM1390C==1&&$PreGameName == "dm1390.nss"){
	}else{
	CreateCamera("Ｃ", 0, 0, 15000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵演背景奥", 0, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間障子抜き背景.png");
	CreateTextureSP("Ｃ/絵演背景左", 0, 374, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子左.png");
	CreateTextureSP("Ｃ/絵演背景右", 0, 514, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子右.png");

	CreateTextureSP("Ｃ/絵演背景奥面奥", -2500, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間障子抜き背景.png");
	CreateTextureSP("Ｃ/絵演背景奥面左", -2500, 374, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子左.png");
	CreateTextureSP("Ｃ/絵演背景奥面右", -2500, 514, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子右.png");

	CreateTextureSP("Ｃ/絵演背景奥弐面奥", -11250, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間障子抜き背景.png");
	CreateTextureSP("Ｃ/絵演背景奥弐面左", -11250, 374, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子左.png");
	CreateTextureSP("Ｃ/絵演背景奥弐面右", -11250, 514, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子右.png");

	Request("Ｃ*", Lock);
	Request("Ｃ/絵*", Lock);
	MoveCamera("Ｃ", 0, @0, @0, 1000, AxlDxl, true);
	$DM1390C=1;//超速対応用
	}

	Move("@Ｃ/絵演背景左", 0, 374, @0, DxlAuto, false);
	Move("@Ｃ/絵演背景右", 0, 514, @0, DxlAuto, true);
	Move("@Ｃ/絵演背景奥面左", 0, 374, @0, DxlAuto, false);
	Move("@Ｃ/絵演背景奥面右", 0, 514, @0, DxlAuto, true);
	MoveCamera("@Ｃ", 0, @0, @0, 3500, AxlDxl, true);

	Wait(16);

	FadeDelete("上背景", 0, null, true);

	CreateColorSP("絵色再下地", 0, "000000");

	CreateSE("SE01","se物体_ドア障子_扉開く強く01");
	MusicStart("SE01",0,1200,0,1000,null,false);

	Move("@Ｃ/絵演背景左", 600, @-140, @0, DxlAuto, false);
	Move("@Ｃ/絵演背景右", 600, @140, @0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
As if to make sure I'm not caught by the tattoo&, I run over
to a sliding door and violently jerk it open&.

The same room comes up again&.

From behind me the tattoo is pursuing me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/0000010a01">
"What is up with this place&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SEM01","se人体_足音_走る02");
	MusicStartSet("SEM01",700,0,1200,null,false);
	CreateSE("SEM02","se物体_ドア障子_扉開く強く01");
	MusicStartSet("SEM02",1200,0,1000,null,false);
	MugenKairou(1500,500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
I run over frantically and open another door&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：畳を走り、障子をガン！と開ける

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
It's the same room again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//$MugenKairouMoveT=1000;
	//$MugenKairouOpenT=500;
	//$MugenKairouWait="true";

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou(1250,500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Again&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou(1000,500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Again!


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SEM01","se人体_足音_走る02");
	MusicStartSet("SEM01",700,0,1300,null,false);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou(750,500,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou(750,500,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou(750,500,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou(750,500,true);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/0000020a01">
"Ha&, Hah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou(600,500,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou(600,500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
How long will this go on for!?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	CreateSE("SEM01","se人体_足音_走る02");
	MusicStartSet("SEM01",700,0,1500,null,false);

	$MugenKairouMoveAllT = 200;
	$MugenKairouOpenAllT = 200;

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

	CreateSE("SEM01","se人体_足音_走る02");
	MusicStartSet("SEM01",700,0,1750,null,false);

	$MugenKairouMoveAllT = 100;
	$MugenKairouOpenAllT = 100;

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

	CreateSE("SEM01","se人体_足音_走る02");
	MusicStartSet("SEM01",700,0,1800,null,false);

	$MugenKairouMoveAllT = 100;
	$MugenKairouOpenAllT = 100;

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

//※ＳＥ：畳を走り、障子をガン！と開ける
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

	CreateSE("SEM01","se人体_足音_走る02");
	MusicStartSet("SEM01",700,0,2000,null,false);

	$MugenKairouMoveAllT = 50;
	$MugenKairouOpenAllT = 50;

	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);

	$MugenKairouMoveAllT = 0;
	$MugenKairouOpenAllT = 40;

	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);
	MugenKairou($MugenKairouMoveAllT,$MugenKairouOpenAllT,true);


	CreateSE("SE11","se人体_足音_走る02");
	MusicStart("SE11",0,700,0,1000,null,false);
	SetFrequency("SE11", 3000, 800, null);
	MoveCamera("@Ｃ", 3000, @0, @0, 14000, DxlAuto, true);
	SetVolumeEX("SE11", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
No matter what I do&, it's always the same&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：畳を走り、障子をガン！と開ける

//※次ファイル["dm1410.nss"]

}
