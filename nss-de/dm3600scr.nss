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


scene dm3600scr.nss_MAIN
{
$TEXTBOX_TYPE="暴露";

	MinkSparksDropCheck();


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
	$GameName = "dm3600sl.nss";

}


scene dm3600scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――


	PrintGO("上背景", 4900);

//★超速対応
	Request("@EFWIN/プロセス", Start);
	MusicStart("@EFWIN/SE11",1000,500,0,800,null,true);

	OnBG(10,"bg204011_3_暴露ミンク故郷草原炎上");
	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);



//◆演出：火の粉

//-------------------------------------------
//ミズキに似てる男
//-------------------------------------------

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//※民族
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm36/0000010b06">
"Stop! Don't come over here!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/0000020a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
When I turn around&, I see a soldier chasing after a man&.

He somewhat reminds me of Mizuki&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

//※次ファイル["dm3600sl.nss"]

}
