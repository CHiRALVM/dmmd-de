//<continuation number="80">
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


scene dm2010.nss_MAIN
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
	$GameName = "dm2020_vs.nss";

}


scene dm2010.nss
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
	MusicStart("SE12",0,500,0,1000,null,true);

	DrawDelete("絵色黒", 250, 100, null, "slide_01_01_1", true);

//==============================
//※ノイズの場合：
//==============================

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/1000010a01">
"&.&.&.Gah&, dammit&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE11","se人体_足音_走る01L");//あきゅん「ＳＥ：se人体_足音_走る01L」
	MusicStart("SE11",4000,500,0,900,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I dash through the alleyways looking for an escape route&.

I hear the faint sound of footsteps making their way 
towards me&.

Is it a cop&.&.&.?

{	SetVolumeEX("SE11", 2000, 800, null);}
The footsteps approach quickly&. Too quickly&.

Even if I speed up I probably won't be able to get away&.

Oh shit&, he's catching up&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※足音が近付いてきて蒼葉と並ぶ

	SetVolumeEX("SE11", 1000, 700, null);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/1000020a03">
"&.&.&.I won't let you escape&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/1000030a01">
"! Noiz!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I was almost positive it was a cop&, but Noiz is 
the one who runs up next to me instead&.

I run at a considerable speed&, but Noiz remains calm and 
doesn't seem out of breath at all&.

I'm a little perturbed by the fact that Noiz is the one 
who showed up&, but it's better than being alone&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/1000040a01">
"I'm not running from you&, I'm running from the cops!"

{
	FwPro("fwノイズ_通常_normal2",2200,"fwノイズ_通常_serious");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/1000050a03">
"I know&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 1000, 0, null);
	SetVolumeEX("SE12", 300, 0, null);

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,750,0,1000,null,false);

//深：下蒼葉台詞　追加修正分記載しました。
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
We continue running until Noiz suddenly stops&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_足音_着地02");
	MusicStart("SE02",0,800,0,1000,null,false);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0027]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/1000051a01">
"Wha- hey-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0028]
Before he stopped&, he was in front of me&, and I almost 
bumped into him when he suddenly came to a halt&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/1000060a01">
"Hey&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/1000070a03">
"&.&.&.It's coming&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
	SetVolumeEX("@dm*", 500, 0, null);

	PrintGO("上背景", 30000);
	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se擬音_ライム_導入エンカウント01");
	MusicStartSet("SE01",700,0,1000,null,false);
	CreateSE("SE02","se戦闘_衝撃_防壁発動01");
	MusicStartSet("SE02",700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	CreatePlainEX("絵板写", 100);

	CreateProcessEX("プロセス", "Proc_dm2010_01Act");
	Request("プロセス", Start);

	FwPro("fw蒼葉_通常_rage",1000,"fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/1000080a01">
"What's&.&.&. Uh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

	if($Proc_dm2010_01Act==true){
	}else{
	TextBoxDelete(0);
	WaitPlay("プロセス", null);

	}
	Request("プロセス", Stop);
	Request("@SE01", Disused);
	Request("@SE02", Disused);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
With a jerk&, I feel the floor give out from under me&.
This is&.&.&.!

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
	$nextrhymescene="dm2020_vs.nss";

//※次ファイル["dm2020_vs.nss"]

}
