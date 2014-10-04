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


scene dm0422.nss_MAIN
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
	$GameName = "dm0430_vs.nss";

}


scene dm0422.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm009",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06ライム喧騒モブ");
	FadeBG(0,true);

	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev042ノイズＶＳ紅雀.jpg");

	FadeDelete("上背景", 0, null, true);

//==============================================
//※「ノイズに声をかける」を選んだ場合
//==============================================

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/2200010a01">
"Noiz! Cut it out already! Just chill out!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵マスク中", 2010);//ナット名、優先度
	CreateTextureSP("絵マスク中/絵画像", 2000, -190, -130, "cg/ev/l/ev042ノイズＶＳ紅雀_l.jpg");

	FadeDelete("絵板写", 100, null, false);

	CreateColorEX("絵色黒", 1300, "000000");

	Fade("絵色黒", 200, 300, null, false);
	OpenTateMask("絵マスク中",200, 1300,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/2200020a03">
"They're the ones who need to chill out&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵色黒", 200, null, false);
	CloseTateMask("絵マスク中",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

	Fw("fwm若者A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
//【ライムメンバーＡ】
<voice name="ライムメンバーＡ" class="ライムメンバーＡ" src="voice/dm04/2200030e55">
"They're getting fired up over there!"

{	Fw("fwm若者B_通常_normal");}
//【ライムメンバーＢ】
<voice name="ライムメンバーＢ" class="ライムメンバーＢ" src="voice/dm04/2200040e56">
"We'll teach these old geezers what's what&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0430_vs.nss"]

}
