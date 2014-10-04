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


scene dm2451.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2452ed.nss";

}


scene dm2451.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//cono「演出：BGM後ほど調整」


	PrintBG("上背景", 30000);

//	OnBG(10,"bg101011_1_旧住民区通り表");
//	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);
CreateColor("under_color",0,0,0,1024,576,BLACK);
SetAlias("under_color","under_color");


//※演出：特殊選択肢失敗：血まみれバッド

//※演出：画面真っ暗なまま


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　The world<WAIT time=1000>　I<WAIT time=1000>　wish for


　T{Wait(200);}h{Wait(200);}e{Wait(200);} w{Wait(200);}o{Wait(200);}r{Wait(200);}l{Wait(200);}d{Wait(1000);} I{Wait(1000);} r{Wait(200);}e{Wait(200);}a{Wait(200);}l{Wait(200);}l{Wait(200);}y{Wait(1000);} w{Wait(600);}i{Wait(600);}s{Wait(600);}h{Wait(600);} f{Wait(600);}o{Wait(600);}r


//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/5100010a03">
"&.&.&.The world&, I really&, wish for&, is&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm2452ed.nss"]


	ClearFadeAll(1000, true);

}
