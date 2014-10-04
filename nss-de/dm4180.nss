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


scene dm4180.nss_MAIN
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
	$GameName = "dm4180sl.nss";

}


scene dm4180.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, null, true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/8000010a01">
"You know&, you had absolutely no reason to go that far&."

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/8000020a04">
"Ehhh～ But&.&.&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/8000030a01">
"No 'buts'!"

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/8000040a04">
"I know&, but still～!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
We return to Glitter and I go up to the second floor with 
Clear&. We sit on the sofa&, ready to have a conversation&.

I was ready to give him a serious lecture&, but for some 
reason Clear would only reply with a "But!" every time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4180sl.nss"]

}
