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


scene dm3580scr.nss_MAIN
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
	$GameName = "dm3580sl.nss";

}


scene dm3580scr.nss
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

//===========================================
//以下、助けるキャラ別
//===========================================

//-------------------------------------------
//ミオキオナオに似てる子供
//-------------------------------------------

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//※民族
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm35/8000010b10">
"Uwah!!"

//※民族
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm35/8000020b13">
"Fuuehhh!!"

//※民族
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm35/8000030b11">
"Noo!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/8000040a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Those voices&.&.&.!

I turn my head in surprise&, and I see a soldier chasing 
after some children&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
There are three of them&.
They remind me of those bratty siblings&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

//※次ファイル["dm3580sl.nss"]

}
