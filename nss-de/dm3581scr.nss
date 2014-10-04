//<continuation number="50">
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


scene dm3581scr.nss_MAIN
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
	if($dm3581scr_T==true){
	}else{
	$ミンクのトラウマ--;
	MinkSparksDropStrengthFade();
	$dm3581scr_T=true;
	}

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3611.nss";

}


scene dm3581scr.nss
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
	$dm3581scr_T=true;


//◆演出：火の粉

//===========================================
//「助ける」の場合
//===========================================

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/8100010a01">
"Stop it!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Unable to desert them&, I jump over to the soldier and 
deliver a kick&.

He disappears like smoke&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//※民族
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm35/8100020b10">
"Thank you&, big bro!"

//※民族
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm35/8100030b13">
"Thank you!"

//※民族
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm35/8100040b11">
"Thank you!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(300);

	CreateSoundAkk("@EFWIN/民族の男","voice/dm35/8100050e29");
	SoundEffect("@EFWIN/民族の男","Echo",100,50,300,350);
	MusicStart("@EFWIN/民族の男",0,1500,0,1200,null,true);

	$SETime = RemainTime("@EFWIN/民族の男");
	WaitKey($SETime);
	SetVolumeEX("@EFWIN/民族の男", 150, 0, null);
	Wait(150);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The kids start running away&.

//※ＳＥ扱い
//【民族の男】
<voice name="民族の男" class="民族の男" src="voice/dm35/8100050e29">
"Fufufufufu&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

//※次ファイル["dm3611.nss"]

}
