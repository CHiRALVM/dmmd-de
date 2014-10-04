//<continuation number="10">
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


scene dm3572scr.nss_MAIN
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

	//▼火の粉の強度チェック
	if($dm3572scr_T==true){
	}else{
	$ミンクのトラウマ++;
	MinkSparksDropStrengthFade();
	$dm3572scr_T=true;
	}

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	if($pMINK==3&&$pMINKbad>0){	$GameName = "dm3611.nss";$ミンク選択肢8=0;
	}else if($pMINK==3){	$GameName = "dm3620scr.nss";$ミンク選択肢8=1;
	}else if($pMINK==2){	$GameName = "dm3580scr.nss";
	}else if($pMINK==1){	$GameName = "dm3590scr.nss";
	}else {		$GameName = "dm3600scr.nss";
	}

}


scene dm3572scr.nss
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

	$ミンクのトラウマ++;
	MinkSparksDropStrengthFade();
	$dm3572scr_T=true;

//◆演出：火の粉

//===========================================
//「助けない」の場合
//===========================================

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/7200010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I can't&.
I have to search for Mink&.

My heart hurting&, I advance towards the door&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3611.nss"]//$pMINK=3&$ミンク選択肢>0
//※次ファイル["dm3620scr.nss"]//$pMINK=3
//※次ファイル["dm3580scr.nss"]//$pMINK=2
//※次ファイル["dm3590scr.nss"]//$pMINK=1
//※次ファイル["dm3600scr.nss"]//$pMINK=0

}
