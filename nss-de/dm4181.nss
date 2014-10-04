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


scene dm4181.nss_MAIN
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
	$GameName = "dm4190.nss";

}


scene dm4181.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//===========================================
//「しっかりと言い聞かせる」の場合
//===========================================

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/8100010a01">
"You went way too far back there&."

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/8100020a04">
"Did I really&.&.&.?"

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/8100030a01">
"You changed back there&, your entire atmosphere was
 different from your usual one&."

{
	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/8100040a04">
"It was?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/8100050a01">
"Don't ask me if "It was?"&. When you took that guy with the
 glasses I thought you were going to kill him!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4190.nss"]

}
