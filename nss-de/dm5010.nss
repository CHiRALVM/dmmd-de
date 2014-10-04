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


scene dm5010.nss_MAIN
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
	$GameName = "dm5020_vs.nss";

}


scene dm5010.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm009",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);

	Delete("上背景");

	CreateSE("SE12","se人体_足音_走る01L");//あきゅん「ＳＥ：se人体_足音_走る01L」
	MusicStart("SE12",0,700,0,1000,null,true);

	DrawDelete("絵色黒", 250, 100, null, "slide_01_01_1", true);

//==============================
//※蓮の場合：
//==============================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I did nothing but run to try to shake off the police&.

{	SetVolumeEX("SE12", 1000, 0, null);}
How long have I even been running for&.&.&.?

En route&, I come to a stop and check my surroundings&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
}
I don't hear any footsteps after us&.
Did I shake them off?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/1000010a01">
"Ha&, ha&.&.&. Haah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I lean against a nearby wall&, taking rough&, heavy 
breaths&. I'm completely out of air after running 
at full speed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※前方から微かな足音（ふらついてる）
	CreateSE("SE11","se人体_足音_歩く01ふらつきL");//あきゅん「ＳＥ：se人体_足音_歩く01ふらつきL」
	MusicStart("SE11",3000,700,0,900,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
As I catch my breath&, I hear something&.

I look and see a man walking in front of me&.

He's grunting and making odd noises&, probably completely 
wasted&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 250, 0, null);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/1000020a01">
"Is he drunk?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	PrintBG("上背景", 30000);
	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se擬音_ライム_導入エンカウント01");
	CreateSE("SE02","se戦闘_衝撃_防壁発動01");

	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	CreatePlainEX("絵板写", 100);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("@絵色白", 300, 1000, Axl3, true);
	Wait(100);
	Fade("@絵板写", 0, 1000, null, true);
	DrawEffect("@絵板写", 5000, "Ripple", 500, 100, null);
	Delete("@OnBG*");
	Fade("@絵色白", 3000, 0, null, true);
	Delete("@絵色白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I felt my chest sink right at that moment&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/2000010a01">
"!"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/2000020a06">
"Aoba!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateMaskEX("絵覆", 0, Center, Middle, "cg/data/slide_02_00_1.png", false);
	SetVertex("絵覆", center, top);
	CreateColorEX("絵覆/絵色黒", 5000, "000000");

	Zoom("絵板写", 2000, 1000, 2000, Axl3, false);
	Move("絵板写", 20000, @0, 1152, null, false);

	Fade("絵覆/絵色黒", 500, 1000, null, false);
	Zoom("絵覆", 5000, 1000, 20000, AxlDxl, true);

	CreateSE("@EFWIN/SE01","se擬音_ライム_超音波01L");
	Request("@EFWIN/SE01", Lock);
	MusicStart("@EFWIN/SE01",2000,700,0,500,null,true);
	$nextrhymescene="dm5020_vs.nss";

//※次ファイル["dm5020_vs.nss"]

}
