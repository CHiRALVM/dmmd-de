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


scene dm1010.nss_MAIN
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
	$GameName = "dm1030.nss";

}


scene dm1010.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//嶋：前ファイルから引き継ぎ
	SoundPlay("@dm009",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 250, 100, null, "slide_01_01_1", true);

//==============================
//※紅雀の場合：
//==============================

	Fw("fw紅雀_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/1000010a02">
"Aoba!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Koujaku runs in the same direction as me and dashes up to  my side&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/1000020a02">
"Keep running!"

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/1000030a01">
"Yeah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_足音_走る01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se人体_足音_走る01");
	MusicStart("SE03",0,700,0,900,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Without the chance to even wonder where we were headed&, we ran through alleyways left and right&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Wait(500);

//※次ファイル["dm1030.nss"]

}
