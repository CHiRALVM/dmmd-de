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


scene dm3561scr.nss_MAIN
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
	if($dm3561scr_T==true){
	}else{
	$ミンクのトラウマ--;
	MinkSparksDropStrengthFade();
	$dm3561scr_T=true;
	}

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3570scr.nss";

}


scene dm3561scr.nss
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
	$dm3561scr_T=true;

//===========================================
//「助ける」の場合
//===========================================

//◆演出：火の粉

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/6100010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I turn right around and run after the voice&.

A man is being held by the hair by someone who looks like 
a soldier&, forcefully dragged along the ground&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/6100020a01">
"Stop!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
The soldier stops&, and then tosses away the other's body&.

The soldier disappears like smoke&, and the other man runs 
away&, thanking me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(300);

	CreateSoundAkk("@EFWIN/民族の女","voice/dm35/6100030e30");
	SoundEffect("@EFWIN/民族の女","Echo",100,50,300,350);
	MusicStart("@EFWIN/民族の女",0,1500,0,1000,null,true);

	$SETime = RemainTime("@EFWIN/民族の女");
	WaitKey($SETime);
	SetVolumeEX("@EFWIN/民族の女", 150, 0, null);
	Wait(150);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9990]
//※ＳＥ扱い
//【民族の女】
<voice name="民族の女" class="民族の女" src="voice/dm35/6100030e30">
"Fufufufufufu&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

//※次ファイル["dm3570scr.nss"]

}
