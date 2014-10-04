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


scene dm0370.nss_MAIN
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
	$GameName = "dm0380.nss";

}


scene dm0370.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//==============================================
//※以降、合流
//==============================================

	PrintGO("上背景", 30000);

	CreateSE("SE01","se物体_蒼葉宅自室扉_扉開く強く01");//あきゅん「ＳＥ：se物体_青葉宅自室扉_扉開く強く01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵背景", 10, -1024, -350, "cg/bg/l/bg104031_5_蒼葉宅自室消灯荒らし_l.jpg");
	CreateTextureSP("絵立絵1", 700, 50, Middle, "cg/fu/x/fwタエ_通常_normal_x01.png");
	CreateTextureEX("絵立絵2", 700, 50, Middle, "cg/fu/x/fwタエ_通常_shout_x01.png");

	CreateMovieSP("絵動画", 1000, 270, 40, true, true, "dx/mv0003集中線01_白.ngs");
	Zoom("絵動画",0,2800,2750,null,true);Request("絵動画",Smoothing);
	Zoom("絵立絵*",0,800,800,Dxl2,true);Request("絵立絵1",Smoothing);

	FadeDelete("上背景", 0, null, true);

	Fade("絵立絵1", 200, 0,Axl3, false);

	Zoom("絵立絵*",300,1000,1000,Dxl2,false);
	Fade("絵立絵2", 200, 1000, Dxl2, false);

	FadeFR2("絵*",0,1000,300,0,0,20,null, false);

	FadeDelete("絵動画", 300, null, false);

	SetVolumeEX("@dm*", 1000, 0, null);
	SetVolumeEX("@SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/7000010b03">
"You brats are too noisy! Give me a break!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
The door opens violently and Granny's angry voice echoes 
throughout the room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");
	Delete("絵立絵*");
	Delete("絵動画");

	OnBG(10,"bg104031_5_蒼葉宅自室消灯荒らし");
	FadeBG(0,true);

	St("C",740, @0,@0,"bu紅雀_通常_normal2");
	St("LL",730, @0,@0,"buノイズ_通常_normal2");
	St("RR",730, @-40,@0,"buクリア_通常マスクあり_normal");
	FadeAllSt(0,true);

	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Koujaku&, the man in green&, gas mask guy and I all stop 
moving and turn to look at Granny as if we were little 
chicks&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/7000020b03">
"You youngsters&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
A very visible blood vessel appears on her forehead&, and 
she looks at us with eyes burning with anger&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/7000030b03">
"Everyone&, downstairs! Right now!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_コミカル_落ちる01");
	MusicStart("SE01",0,700,0,1000,null,false);

//あきゅん「演出：ギャグ締めなのでコミカルに場面転換」

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 10, null, "cg/data/turn_01_00_0.png", true);

	Wait(500);

//※次ファイル["dm0380.nss"]

}
