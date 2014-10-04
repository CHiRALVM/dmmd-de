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


scene dm3620scr.nss_MAIN
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

	//▼念のためアンロック
	SparksDropDelete(0);
	Request("@EFWIN/SE*", UnLock);
	Request("@EFWIN/プロセス", UnLock);
	Request("@EFWIN/ミンクトラウマ", UnLock);
	Request("@EFWIN/絵*", UnLock);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3630scr.nss";

}


scene dm3620scr.nss
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
//★現実世界へ戻るルート
//※バッドエンドは別テキストデータ
//===========================================

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/2000010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
This is the past&.
Something that's already happened&.

It's not happening right now in the present&.
You can't change the past&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
A prickling pain of guilt squeezes down on me and I try to ignore the voice&, closing my eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SEL01","se環境_自然_波01L");
	MusicStart("SEL01",3000,600,0,700,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I try to bear the heat burning in as far as my bones when 
suddenly I hear music&.

&.&.&.The sound of a beating heart&.<k>
No&, the roar of waves&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Request("@EFWIN/SE*", UnLock);
	SetVolumeEX("@EFWIN/SE*", 7000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The booming sound echos&, overunning the agonizing cries of the world&.

It must be my imagination&, the feeling of the heat cooling down&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SEL01", 10000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I can still&.&.&.Go on&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SEL02","se物体_草_漁る01");
	MusicStart("SEL02",0,600,0,600,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
I gather my strength and walk off to find Mink&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@SE*", 1500, 0, null);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 2000, 1000, null, true);

	SparksDropDelete(0);
	Request("@EFWIN/プロセス", UnLock);
	Request("@EFWIN/ミンクトラウマ", UnLock);
	Request("@EFWIN/絵*", UnLock);
	Delete("@EFWIN/プロセス");
	Delete("@EFWIN/ミンクトラウマ");
	Delete("@EFWIN/絵*");

	Wait(500);

//※次ファイル["dm3630scr.nss"]

}
