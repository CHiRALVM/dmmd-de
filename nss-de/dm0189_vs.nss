//<continuation number="60">
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


scene dm0189_vs.nss_MAIN
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

	//▼演出に使用した素材を削除
	TiesMovieDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0190_vs.nss";

}


scene dm0189_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	$NoTextBoxDelete=true;
	PrintBG("上背景", 10000);

	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.Ich muss es mir eingebildet haben&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/9000010a06">
"! Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_ライム_導入エンカウント01");
	MusicStartSet("SE01",700,0,1000,null,false);

	CreateSE("SE02","se戦闘_衝撃_防壁発動01");
	MusicStartSet("SE02",700,0,1000,null,false);

	CreateMovieEX("絵動画", 1100, Center, Middle, false, false, "dx/mv溶落裏路地.ngs");
	Request("絵動画", Stop);
	$SETime = RemainTime("絵動画")-300;

//※ライムフィールド展開
	CreateProcessEX("プロセス", "Proc_dm0189_vs_01Act");
	Request("プロセス", Start);

	FwPro("fw蒼葉_通常_normal2", 1100, "fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000020a01">
"Eh? &.&.&.nh!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
Ploetzlich fuehle ich etwas man wohl mit dem Gefuehl vergleichen kann&, 
wenn man beim Treppen steigen ins Leere tritt&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 3000, "000000");

	SetVolumeEX("SE01", 300, 0, null);
	SetVolumeEX("SE02", 300, 0, null);

	if($Proc_dm0189_vs_01Act==true){
	Fade("絵色黒", 0, 1000, null, true);
	}else{
	TextBoxDelete(0);
	WaitPlay("@プロセス", null);
	Fade("絵色黒", 300, 1000, null, true);
	}

	Delete("プロセス");
	Delete("SE01");
	Delete("SE02");

	TiesMovieSet("転送ライムa",2000);
	TiesMovieStart();

	CreateSE("SE01","se擬音_ライム_超音波01L");
	MusicStart("SE01",2000,700,0,500,null,true);
	DrawDelete("絵色黒", 500, 100, Axl2, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
Alles hoert auf sich zu bewegen und driftet
danach mit grosser Geschwindigkeit davon&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000030a01">
"Au&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
In dieser verwirrenden Situation&, bekomme
ich wieder diese stechenden Kopfschmerzen and schaue finster&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	TiesMovieNEXT();

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000040a01">
"Wa&.&.&.as&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Meine Gedanken werden trueb wie Sumpfwasser und meine Haneder waeren taub&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 600, 0, null);

	CreateSE("SE02","se擬音_精神_導入01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	Fade("絵色白", 1000, 1000, AxlAuto, true);

	Wait(500);

	TiesMovieDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Nachdem etwas seltsames meinen Koerper gepeinigt hat&, erstreckt sich ein neuer Anblick vor meinen Augen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024a]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/9000050a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0190_vs.nss"]


//	ClearFadeAll(1000, true);

}
