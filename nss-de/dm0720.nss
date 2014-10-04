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


scene dm0720.nss_MAIN
{
$TEXTBOX_TYPE="";
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

//★ルート判定(1/3)
//※ここのファイルで蓮ルートの判定。
//他の４キャラのGOODＥＤをクリアし、最初からスタートしてる場合、かつ、蓮のキャラポイントが４、の時、蓮ルートに確定。
	$pREN=$蓮選択肢1+$蓮選択肢2+$蓮選択肢3+$蓮選択肢4;
	if($START0010==1&&$pREN==4){$DM_ROUTE=5;}
	else{$DM_ROUTE=0;}

	if($DM_ROUTE==5){	$GameName = "dm0725_vs.nss";
	}else {		$GameName = "dm0730.nss";
	}

}


scene dm0720.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg402051_1_立ち入り禁止区域裏通り");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/2000010a01">
"&.&.&.Mizuki!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I scream and take a step back&.

This is&.&.&.

I don't know where this is&.

&.&.&.No&, it's different&.

This is where the black van and car were parked&.

Then&, Mizuki is&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0725_vs.nss"]蓮ルートのみ表示
//※次ファイル["dm0730.nss"]

}
