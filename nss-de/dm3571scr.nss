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


scene dm3571scr.nss_MAIN
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
	if($dm3571scr_T==true){
	}else{
	$ミンクのトラウマ--;
	MinkSparksDropStrengthFade();
	$dm3571scr_T=true;
	}

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	if($pMINK==3){	$GameName = "dm3611.nss";
	}else if($pMINK==2){	$GameName = "dm3580scr.nss";
	}else if($pMINK==1){	$GameName = "dm3590scr.nss";
	}else {		$GameName = "dm3600scr.nss";
	}

}


scene dm3571scr.nss
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

	$ミンクのトラウマ--;
	MinkSparksDropStrengthFade();
	$dm3571scr_T=true;

//◆演出：火の粉

//===========================================
//「助ける」の場合
//===========================================

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/7100010a01">
"Shit!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Without being able to leave it alone&, I run towards the 
voice&.

A soldier has a man squirming on the floor with his gun 
pointed right at him&, pressing down on the trigger&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/7100020a01">
"Stop it!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I kick the soldier&, and his gun goes flying&.

He disappears like smoke&, and the man runs away while 
thanking me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(300);

	CreateSoundAkk("@EFWIN/民族の女","voice/dm35/6100030e30");
	SoundEffect("@EFWIN/民族の女","Echo",100,50,300,350);
	MusicStart("@EFWIN/民族の女",0,1500,0,1200,null,true);

	$SETime = RemainTime("@EFWIN/民族の女");
	WaitKey($SETime);
	SetVolumeEX("@EFWIN/民族の女", 150, 0, null);
	Wait(150);

//※次ファイル["dm3611.nss"]//$pMINK=3
//※次ファイル["dm3580scr.nss"]//$pMINK=2
//※次ファイル["dm3590scr.nss"]//$pMINK=1
//※次ファイル["dm3600scr.nss"]//$pMINK=0

}
