//<continuation number="840">
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


scene dm5590_vs.nss_MAIN
{
$TEXTBOX_TYPE="ライム";

	CreateTxtinEffect("蓮",4000);
	CreateTxtinEffect("東江",4000);
	RMDefaultStatusSet();
	RMDControlSet();

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
	#ev010卯水a=true;
	#ev559蓮、卯水亜種を撃破=true;
	#ev900ライム対戦蒼葉VS東江2=true;
	#ev900ライム対戦蒼葉VS東江2_アップ=true;
	#ev950蓮の剣砲構え=true;
	#ev950蓮バトル汎用攻撃=true;
	#ev950蓮バトル汎用突進=true;
	#ev950蓮バトル汎用防御=true;
	#ev950蓮バトル汎用防御_効果=true;
	#bg201051_0_ライム東江=true;
	#bg201052_0_ライム東江=true;

	//▼演出上の処理を解除
	Request("@絵背景卯水", UnLock);
	Request("@絵卯水梵字", UnLock);
	Request("@絵卯水梵字光効果", UnLock);
	Request("@絵卯水", UnLock);
	Request("@絵卯水弐", UnLock);
	Request("@絵卯水参", UnLock);
	Request("@絵最後卯水", UnLock);
	Request("@絵卯水梵字光", UnLock);
	Request("@絵卯水梵字光弐", UnLock);
	Request("@SEF*", UnLock);
	Request("@SE01", UnLock);
	Request("@SE01_ef", UnLock);
	SetLoopPoint("@dm023",1789,93204);
	RMDControlDelete();
	EffectTxtinDelete();
	EffectAllDelete();



	//▼特殊条件下での処理設定
	if($SYSTEM_skip && #SYSTEM_skip_express && !$dm5590_vs_musicB){
		$dm5590_vs_music=false;
	}

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5600.nss";

	//▼頭痛レベル設定
	$HALevel=5;

}


scene dm5590_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
	RMDControlRDefault($蒼葉ＨＰ);//5000
	RMDControlLDefault($東江ＨＰ);//5000
	$現蒼葉ＨＰ=$蒼葉ＨＰ;
	$現東江ＨＰ=$東江ＨＰ;
//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白", 15000, "FFFFFF");
	OnBG(10,"bg201051_0_ライム東江");
	FadeBG(0,true);
	CreateTextureSP("絵演背景", 1010, Center, InBottom, "cg/bg/l/bg201051_0_ライム東江_l.jpg");
	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("上背景", 0, null, true);
	FadeDelete("絵色白", 3000, null, true);

//あきゅん「演出：最初の辻斬りと同じく、ライム没入演出はじっくりやる」

//※東江、ライム展開。蒼葉引っ張りこまれる。
//※東江のフィールド。曼荼羅や梵字が背景に浮いている和風で神秘的な世界。東江のオールメイトは卯水。
//　地面が黒で壁＆天井（ドーム型）は暗い紫とか。

	Wait(500);

//覇：卯水登場分割読み込み(1/3)
	CreateTextureEX("絵背景卯水", 1000, Center, InBottom, "cg/ev/ev010卯水_背景.jpg");
	Request("絵背景卯水", Lock);
	CreateTextureEX("絵卯水梵字", 1005, Center, InBottom, "cg/ev/ev010卯水_効果梵字.png");
	Request("絵卯水梵字", Lock);
	CreateTextureEXadd("絵卯水梵字光効果", 1005, Center, InBottom, "cg/ev/ev010卯水_効果梵字.png");
	Request("絵卯水梵字光効果", Lock);
	CreateTextureEX("絵卯水", 1005, Center, InBottom, "cg/ev/ev010卯水_人物卯水のみ.png");
	Request("絵卯水", Lock);
//ここまで▲△△

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
This is&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateProcessEX("プロセス", "Proc_dm5590_vs_01Act");
	Request("プロセス", Start);

	Wait(3700);

//覇：卯水登場分割読み込み(2/3)
	CreateTextureEXadd("絵卯水弐", 1015, Center, -320, "cg/ev/ev010卯水_人物卯水朧.png");
	Request("絵卯水弐", Lock);
	RhymeDrawSet("卯水",2000,center,InBottom,"cg/ev/ev010卯水_人物卯水のみ.png");
//C▲△

	SoundPlay("@dm021",0,450,true);//東江と対決

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011a]
A Rhyme field&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011b]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000010a01">
"Rhyme&.&.&. So it's Toue&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Request("プロセス", Stop);

	if($Proc_dm0190_vs_01Act==true){
	}else{
	CreatePlainSP("絵板写", 10000);
	Move("@絵演背景", 0, @0, -288, null, true);
	Zoom("@絵演背景", 0, 500, 500, null, true);
	FadeDelete("絵板写", 500, null, true);
	}
	$Proc_dm0190_vs_01Act=false;
	Delete("プロセス");

	CoilStartSet();
	St("C",1740, @0,@0,"bu蓮_通常マントなし_normal");
	Position($C_次, $x1, $y1);
	RhymeDrawSet("蓮外套人型",1750,$x1,$y1,"cg/bu/bu蓮_通常マントなし_normal.png");
	CreateSE("SE01a","se擬音_ライム_顕現01");

	MusicStart("SE01a",0,700,0,1000,null,false);
	CoilStartFade2();
	RhymeDrawFade("蓮外套人型");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011c]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000020a06">
"Seems so&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
This will be the second time I've fought with Toue in 
Rhyme&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演背景二", 2100, Center, 0, "cg/bg/l/bg201052_0_ライム東江_l.jpg");
	Move("絵演背景二", 15000, @0, -390, DxlAuto, false);
	Fade("絵演背景二", 2000, 1000, null, false);

//覇：卯水登場分割読み込み(3/3)
	CreateTextureEX("絵卯水参", 1014, Center, -320, "cg/ev/ev010卯水_人物卯水.png");
	Request("絵卯水参", Lock);
	CreateTextureEX("絵最後卯水", 1025, Center, -320, "cg/ev/ev010卯水.jpg");
	Request("絵最後卯水", Lock);
	CreateTextureEXadd("絵卯水梵字光", 1100, Center, InBottom, "cg/ev/ev010卯水_効果梵字朧.png");
	Request("絵卯水梵字光", Lock);
	CreateTextureEX("絵卯水梵字光弐", 1004, Center, InBottom, "cg/ev/ev010卯水_効果梵字朧.png");
	Request("絵卯水梵字光弐", Lock);
//ここまで△△▲

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
This wasn't the field from last time&, though&.
So this must be Toue's real field&.

A mysterious place with a gloomy and ghastly mood to it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵演背景二", 0, 1000, null, false);
	DeleteAllSt(0,true);
	Delete("絵演背景");

	OnBG(10,"bg201051_0_ライム東江");
	FadeBG(0,true);

	FadeDelete("絵演背景二", 1400, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I lost last time&, now&.&.&.

I feel more powerful&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	St("C",1740, @0,@0,"st東江_通常_normal");
	Position($C_次, $x1, $y1);
	RhymeDrawSet("蓮外套人型",1750,$x1,$y1,"cg/st/st東江_通常_normal.png");
	CreateSE("SE01a","se擬音_ライム_顕現01");

	MusicStart("SE01a",0,700,0,1000,null,false);
	CoilStartFade2();
	RhymeDrawFade("蓮外套人型");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
The scenery begins to shake&, and two figures appear&.<k>
One of them is Toue&, and the other&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//卯水登場：足元にアップ
	//CreatePlainSP("絵板写", 5000);
	PrintGO("上背景", 10000);

	DeleteAllSt(0,true);
	//CreateTextureSP("絵背景", 100, Center, InBottom, "cg/bg/l/bg101051_5_旧住民区通り裏路地06_l.jpg");
	//CreateColorSP("絵背景", 100, "000000");

	SetVertex("絵卯水梵字*", 512, 1067);
	Zoom("絵卯水梵字", 0, 0, 0, null, true);
	Rotate("絵卯水梵字*", 0, @-30, @0, @0, null,true);

	SetVolumeEX("SE*", 1000, 0, null);
	Delete("絵色黒");
	FadeDelete("上背景", 500, null, true);

	Request("絵背景卯水", UnLock);
	Request("絵卯水梵字", UnLock);
	Request("絵卯水梵字光効果", UnLock);
	Request("絵卯水", UnLock);
	Request("絵卯水弐", UnLock);
	Request("絵卯水参", UnLock);
	Request("絵最後卯水", UnLock);
	Request("絵卯水梵字光", UnLock);
	Request("絵卯水梵字光弐", UnLock);


//卯水登場：魔方陣が発生
	Zoom("絵卯水梵字光効果", 0, 1100, 1100, null, true);
	CreateSE("SE11","se擬音_ライム_顕現01");
	MusicStart("SE11",0,700,0,1500,null,false);
	Fade("絵卯水梵字", 0, 1000, null, false);
	Fade("絵卯水梵字光効果", 0, 1000, null, false);
	DrawTransition("絵卯水梵字", 500, 0, 1000, 50, null, "cg/data/zzex_turn_02_00_1 .png", false);
	DrawTransition("絵卯水梵字光効果", 500, 0, 1000, 50, null, "cg/data/zzex_turn_02_00_1 .png", false);
	Zoom("絵卯水梵字", 200, 990, 990, Dxl3, false);
	Zoom("絵卯水梵字光効果", 200, 990, 990, Dxl3, false);
	Wait(190);
	Zoom("絵卯水梵字", 300, 1000, 1000, Dxl1, false);
	Zoom("絵卯水梵字光効果", 300, 1000, 1000, Dxl1, false);
	FadeDelete("絵卯水梵字光効果", 800, null, true);
	Wait(50);


//卯水登場：魔方陣角度変わって卯水準備
	CreateSE("SE21","se擬音_ライム_導入エンカウント01");
	MusicStart("SE21",0,700,0,1000,null,false);
	Fade("絵背景卯水", 0, 1000, Dxl1, false);
	DrawTransition("絵背景卯水", 500, 0, 1000, 1000, Dxl1, "cg/data/circle_17_00_0.png", false);
	Fade("絵卯水梵字光", 500, 500, Dxl1, false);

	Move("絵背景卯水", 1000, @0, @200, Dxl1, false);
	Rotate("絵卯水梵字*", 1000, @30, @0, @0, Dxl1,true);
	Wait(200);

//卯水登場：卯水顕現
	CreateSE("SE31","se擬音_ライム_顕現01");
	MusicStart("SE31",0,700,0,1000,null,false);
	Fade("絵卯水梵字光", 500, 1000, Dxl1, false);
	RhymeDrawFade("卯水");
	Fade("絵卯水", 200, 1000, null, true);
	Fade("絵卯水梵字光弐", 500, 1000, Dxl3, false);
	Fade("絵卯水梵字光", 500, 0, Dxl1, true);

	Wait(100);

	Move("絵卯水", 1000, @0, @-30, Dxl1, true);



	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023a]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000030a01">
"Wha? Is that&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//卯水登場：卯水顔にカメラ移動
	Move("絵卯水", 2000, @0, -320, AxlDxl, false);
	Move("絵卯水梵字*", 2000, @0, -320, AxlDxl, false);
	Move("絵背景卯水", 2000, @0, -320, AxlDxl, true);
	Delete("絵卯水梵字");
	Delete("絵卯水梵字光");

	CoilStartSet();
	Wait(200);

	CreateSE("SE41","se擬音_ライム_導入エンカウント01");
	CreateSE("SE42","se擬音_ライム_導入エンカウント01");
	CreateSE("SE43","se擬音_ライム_導入エンカウント01");

	MusicStart("SE41",0,700,0,1300,null,false);
	CoilStartFade();
	Fade("絵卯水弐", 300, 1000, Dxl1, false);
	Fade("絵卯水参", 300, 1000, Dxl1, true);
	MusicStart("SE42",0,700,0,1300,null,false);
	Wait(50);
	Fade("絵卯水*", 1000, 0, Dxl1, false);
	Fade("絵最後卯水", 1000, 1000, Dxl1, false);
	Wait(150);
	MusicStart("SE43",0,700,0,1300,null,false);
	Wait(850);
	Delete("絵卯水*");
	Delete("絵背景卯*");

{	Fw("fw蒼葉_通常_worry4");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023b]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000040a01">
"Usui&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

※卯水の目がカッと開く。卯水亜種に変身。
	Request("蓮外套*", UnLock);
	Delete("蓮外套*");
	CreatePlainSP("絵板写", 10000);

	Wait(16);
	CoilIntoDelete();
	Delete("絵最後*");
	Delete("卯水*");
	Delete("絵背景*");

	CreateTextureSP("絵ＥＶ", 1000, Center, 0, "cg/ev/x/ev010卯水_x06.jpg");
	Move("絵ＥＶ", 2000, @0, -70, DxlAuto, false);
	FadeDelete("絵板写", 1000, null, true);

	WaitAction("@絵ＥＶ", null);

	CreateSE("SE01","se擬音_効果_ドン03");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateSE("SE02","se戦闘_ライム_紋章発動01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	CreateEffectSP("絵効果", 4990, Center, Middle, 1024, 576, "Plain");
	Zoom("絵効果", 1, 1100, 1100, null, true);
	SetBlur("絵効果", true, 3, 500, 200, false);

	CreateTextureSP("絵ＥＶ", 1000, Center, -70, "cg/ev/x/ev010卯水a_x06.jpg");

	Wait(30);

	FadeDelete("絵色白", 150, null, false);
	Zoom("絵効果", 1400, 1000, 1000, Dxl3, true);
	Delete("絵効果");

	CreateTextureEX("絵ＥＶ２", 1110, Center, -1100, "cg/ev/m/ev010卯水a_m.jpg");
	Move("絵ＥＶ２", 30000, @0, -900, DxlAuto, false);
	Fade("絵ＥＶ２", 1000, 1000, null, true);

	Wait(1000);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000050a01">
"Why does Usui look like that?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_normal");//人型裸
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000060a06">
"That's Toue's Allmate&. That is Usui's true form&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000070a01">
"Are you serious&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureSP("絵専", 1010, 0, -350, "cg/ev/l/ev900ライム対戦蒼葉VS東江2_l.jpg");
	Move("絵専", 10000, @0, -270, DxlAuto, false);
	FadeDelete("絵ＥＶ２", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000080b02">
"Now&, shall we begin? Your turn first&, Aoba-kun&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Move("絵専", 0, -710, -620, DxlAuto, false);
	Move("絵専", 10000, @0, -700, DxlAuto, false);
	FadeDelete("絵板写", 1000, null, true);

//{	Fw("fw蒼葉_通常_rage");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000090a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵専", 1010, Center, -560, "cg/ev/ev010卯水a.jpg");
	CreateTextureSP("絵演立絵", 1740, 550, 20, "cg/bu/bu東江_通常_normal.png");

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
A calm and cool smile rises to Toue's face&.

His carefree attitude just fires me up more&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Can I really win this?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	$TextBoxDelete=true;

//	PrintGO("上背景", 10000);
	CreatePlainSP("上背景", 10000);

	OnBG(10,"bg201051_0_ライム東江");
	FadeBG(0,true);

	St("C",740, @0,@0,"bu蓮_通常マントなし_normal");
	FadeSt("C",0,true);

	Delete("絵ＥＶ");
	Delete("絵専");
	Delete("絵演立絵");

	SetVolumeEX("@dm*", 2000, 0, null);

//あきゅん「※：顔出さないのは演出です」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000100a06">
"It'll be fine&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
When I turned my eyes to his strong affirmation&, I found 
Ren looking right at me&.

&.&.&.That's right&.<k>
I have Ren&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000110a01">
"Well&, ready or not!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「※：ここから東江戦の曲流したかったけどなんかあまりに勢い感が無いのでやめた！」
	SetStream("@dm023", 44700);
	SetLoopPoint("@dm023",44700,93264);
	SoundPlay("@dm023",0,450,true);//疾走２

//※蒼葉の攻撃。「御」セット。蓮の腕から長い刃物が飛び出し、切り込みに行かせる。

	CreateSE("SE00","se戦闘_動作_跳躍低01");
	MusicStart("SE00",0,700,0,600,null,false);

	CreateColorSP("絵黒幕", 10000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DeleteAllSt(0,true);
	Delete("@OnBG*");


//あきゅん「演出まとめ：蓮突進」
//定義
	CreateMovieEX("絵演動画", 2100, Center, Middle, true, true, "dx/mv0003集中線04_黒&.ngs");
	Rotate("絵演動画", 0, @0, @0, -11, null,true);
	DrawTransition("絵演動画", 1, 0, 300, 800, null, "cg/data/circle_20_00_0.png", true);
	Zoom("絵演動画", 0, 3000, 3000, null, true);
	Fade("絵演動画", 0, 500, null, true);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	MoveCamera("Ｃ", 0, @0, @0, 5000, null, true);

	CreateTextureSP("Ｃ/絵演蓮突進背景", 0, -1110, -1220, "cg/ev/l/ev950蓮バトル汎用攻撃a_背景_l.jpg");
	CreateTextureSP("Ｃ/絵演蓮突進一", 500, 800, -500, "cg/ev/ev950蓮バトル汎用突進_人物蓮.png");
	Position("@Ｃ/絵演蓮突進一", $x1, $y1);
	CreateTextureEX("Ｃ/絵演蓮突進一黒", 500, $x1, $y1, "cg/ev/x/ev950蓮バトル汎用突進_人物蓮_xb.png");
	Fade("Ｃ/絵演蓮突進一黒", 0, 800, null, true);

	CreateTextureEXadd("Ｃ/絵演蓮突進一光", 500, $x1, $y1, "cg/ev/ev950蓮バトル汎用突進_人物蓮.png");

	Zoom("Ｃ/絵演蓮突進一*", 0, 10, 10, null, true);

	CreateProcessEX("プロセス", "Proc_dm0200_vs_02Act");

//開始
	MoveCamera("Ｃ", 300, @0, @0, 1250, Dxl2, false);
	Move("Ｃ/絵演蓮突進背景", 80000, 0, -1450, null, false);
	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);
	Request("プロセス", Start);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1200,null,false);

	Fade("Ｃ/絵演蓮突進一黒", 3600, 0, Dxl1, false);
	Position("@Ｃ/絵演蓮突進一", $x1, $y1);
	BezierMove("Ｃ/絵演蓮突進一*", 900, ($x1,$y1){200,-180}{0,-180}(-20, -240), Dxl2, false);
	Zoom("Ｃ/絵演蓮突進一*", 1000, 250, 250, Dxl2, true);

	Wait(300);

//蒼葉顔カットイン定義
	CreateTextureEX("絵覆縁", 4990, Center, Middle, "cg/mask/ciスラッシュ_02_00z.png");
	CreateMaskEX("絵覆", 0, Center, Middle, "cg/mask/ciスラッシュ_02_00.png", false);
	CreateColorSP("絵覆/絵色白", 5000, "FFFFFF");
	CreateTextureSPsub("絵覆/絵割蒼葉背景", 2100, Center, Middle, "cg/ef/efbg効果02.jpg");
	CreateTextureSP("絵覆/絵割蒼葉顔", 2100, 350, 20, "cg/fu/fu蒼葉_通常_angry.png");
	SetVertex("絵覆/絵割蒼葉顔", 460, 260);
	Zoom("絵覆/絵割蒼葉顔", 0, 1500, 1500, null, true);
	Request("絵覆/絵割蒼葉顔", Smoothing);
	SetBlur("絵覆/絵割蒼葉顔", true, 2, 500, 80, false);

	Zoom("絵覆", 0, 5000, 0, null, true);
	Rotate("絵覆", 0, @0, @0, -270, null,true);
	Zoom("絵覆縁", 0, 5000, 0, null, true);
	Rotate("絵覆縁", 0, @0, @0, -270, null,true);


//蒼葉顔カットイン開始
	Zoom("絵覆", 400, 1000, 600, Dxl3, false);
	Rotate("絵覆", 400, @0, @0, 0, Dxl3,false);
	Zoom("絵覆縁", 400, 1000, 600, Dxl3, false);
	Rotate("絵覆縁", 400, @0, @0, 0, Dxl3,false);
	Wait(200);
	Fade("絵覆縁", 200, 1000, null, false);
	Fade("絵覆/絵色白", 200, 0, null, true);

	Wait(100);

//あきゅん「※：セリフを追加しました」
	CreateVOICE("蒼葉","ex06/0000080a01");//御セット
	$SETime = RemainTime("蒼葉")-100;
	MusicStart("蒼葉",0,1800,0,1000,null,false);

	Zoom("絵覆/絵割蒼葉顔", 300, 1950, 1950, AxlDxl, true);

	WaitKey($SETime);

	SetVolumeEX("蒼葉", 150, 0, null);

	CreateVOICE("蓮","dm55/4000170a06");//了解
	$SETime = RemainTime("蓮");
	MusicStart("蓮",0,1800,0,1000,null,false);
	WaitKey($SETime);
	SetVolumeEX("蓮", 150, 0, null);

//蒼葉顔カットイン閉じ
	Fade("絵覆縁", 300, 0, null, false);
	Fade("絵覆/絵色白", 300, 1000, Dxl3, false);

	Wait(200);

	Zoom("絵覆縁", 200, 1000, 0, AxlDxl, false);
	Zoom("絵覆", 200, 1000, 0, AxlDxl, true);

//紋章セット
	EffectTxtinA("蓮","御");

	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);

//紋章効果により蓮発光
	Fade("Ｃ/絵演蓮突進一光", 0, 500, null, true);
	Zoom("Ｃ/絵演蓮突進一光", 0, 275, 275, null, true);

	FadeDelete("絵色白", 70, null, false);

	EffectTxtinB("蓮","御");

//相手画面に移行する準備

	CreateColorEX("絵黒幕", 10000, "BLACK");

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,700,0,700,null,false);

//蓮：突進進行
	Move("Ｃ/絵演蓮突進一*", 400, -200, -200, Axl2, false);
	$蓮拡大=1000;
	Zoom("Ｃ/絵演蓮突進一", 400, $蓮拡大, $蓮拡大, Axl2, false);
	$蓮光拡大率調整=$蓮拡大*1&.1;
	Zoom("Ｃ/絵演蓮突進一光", 400, $蓮光拡大率調整, $蓮光拡大率調整, Axl2, false);

	Wait(300);

	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateMovieSP("絵演動画", 2100, Center, Middle, true, true, "dx/mv0003集中線01_黒&.ngs");
	Zoom("絵演動画", 0, 3000, 3000, null, true);


	Delete("Ｃ");
	Delete("絵覆*");
	Request("プロセス", Stop);
	Delete("プロセス");

	$現東江ＨＰ=$東江ＨＰ;
	$ダメージＬ=0;
	$現東江ＨＰ=$現東江ＨＰ-$ダメージＬ;
	RMDControlInL(0,$現東江ＨＰ);

	CreateTextureSP("絵専", 1100, Center, -870, "cg/ev/m/ev010卯水a_m.jpg");
	Zoom("絵専", 0, 1000, 1000, null, true);
	SetBlur("絵専", true, 3, 500, 60, false);
	Zoom("絵専", 800, 2500, 2500, Dxl2, false);

	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Fade("絵演動画", 650, 0, null, true);


	CreateSE("SE02a","se戦闘_動作_跳躍滞空01");

//卯水によったカメラが上を映す
	Move("絵専", 600, @0, 576, Axl3, false);
	Wait(590);

	MusicStart("SE02a",500,700,0,2000,null,false);
	SetFrequency("SE02a", 2000, 500, null);

	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateMovieSP("絵演動画", 5100, Center, Middle, true, true, "dx/mv0003集中線04_黒&.ngs");
	Rotate("絵演動画", 0, @0, @0, 90, null,true);
	Zoom("絵演動画", 0, 2000, 3400, null, true);

	CreateColorSP("絵演効果線下色", 4890, "FFFFFF");
	CreateTextureEXsub("絵演効果線下", 4890, 330, -20, "cg/ef/efbg効果01.jpg");
	Zoom("絵演効果線下", 0, 2000, 2000, null, true);

	CreateTextureSP("絵演効果線", 4900, Center, -4788, "cg/ef/efbg効果91t.jpg");
	Zoom("絵演効果線", 0, 2000, 1000, null, true);

	Fade("絵演効果線", 2000, 0, null, false);
	Shake("絵演効果線下", 1900, 20, 0, 0, 0, 1000, Dxl3, false);
	Shake("絵演効果線", 1900, 20, 0, 0, 0, 1000, Dxl3, false);
	Move("絵演効果線", 1400, @0, -288, Dxl3, false);
	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);


//天で止まる
	Wait(400);
	SetVolumeEX("SE02a", 4000, 0, null);
	Fade("絵演動画", 450, 0, null, false);
	Wait(400);

	Fade("絵演効果線下", 500, 1000, null, false);
	Move("絵演効果線下", 1300, @0, 0, DxlAuto, false);
	Fade("絵演効果線", 1000, 0, null, true);

	Wait(500);

//蓮空中からの奇襲
	CreateTextureEX("絵演蓮突撃構", 5110, 295, -330, "cg/ev/x/ev950蓮バトル汎用突進_人物蓮_xb.png");
	Zoom("絵演蓮突撃構", 0, 50, 50, null, true);
	SetBlur("絵演蓮突撃構", true, 3, 500, 30, false);

	CreateTextureEXmul("絵演蓮突撃衝撃波", 5109, 380, -96, "cg/ef/efクリアの歌声.jpg");
	Zoom("絵演蓮突撃衝撃波", 0, 2000, 2000, null, true);


	Move("絵演蓮突撃構", 300, 290, -340, DxlAuto, false);
	Zoom("絵演蓮突撃構", 3000, 90, 90, null, false);
	Fade("絵演蓮突撃構", 300, 1000, null, true);

	Wait(2000);

	CreateSE("SE02b","se戦闘_動作_跳躍低02");
	MusicStart("SE02b",0,700,0,1000,null,false);

	Fade("絵演蓮突撃衝撃波", 0, 500, null, true);
	Zoom("絵演蓮突撃衝撃波", 150, 3000, 3000, Dxl3, false);
	Fade("絵演蓮突撃衝撃波", 100, 0, null, true);

	Rotate("絵演蓮突撃構", 40, @0, @0, -45, null,false);
	Zoom("絵演蓮突撃構", 200, 3000, 3000, Dxl2, false);
	Move("絵演蓮突撃構", 200, -256, -128, null, false);

	Wait(80);

//カメラを卯水に戻す
	Fade("絵黒幕", 0, 0, null, true);
	DrawTransition("絵黒幕", 0, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Fade("絵黒幕", 100, 1000, null, true);
	Delete("絵演蓮*");
	Delete("絵演効果線*");

	CreateTextureEX("絵演卯水盾", 1110, Center, Middle, "cg/ef/efv卯水_曼荼羅防御.png");

	CreateTextureEXadd("絵演蓮斬撃効果", 1215, -200, -160, "cg/ev/ev950蓮バトル汎用攻撃_効果剣閃.png");
	CreateProcessEX("プロセス", "Proc_dm5590_vs_02Act");
	CreateSE("PSE02","se戦闘_蓮_剣撃01");
	MusicStartSet("PSE02",1200,0,1000,null,false);

	CreateTextureEX("絵演蓮突進構", 1210, 340, -150, "cg/ev/ev950蓮バトル汎用突進_人物蓮.png");
	CreateTextureEX("絵演蓮斬撃構", 1210, -180, -1024, "cg/ev/ev950蓮バトル汎用攻撃_人物蓮.png");

	Rotate("絵演動画", 0, @0, @0, -90, null,true);
	Fade("絵演動画", 0, 500, null, false);

	Zoom("絵専", 0, 1000, 1000, null, true);
	Move("絵専", 300, @0, -870, null, false);
	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);

	Fade("絵演動画", 300, 0, null, false);

//　卯水が曼荼羅のシールドで防御。完全に弾かれる。

	CreateSE("SE03","se戦闘_衝撃_防壁発動01");
	Zoom("絵演卯水盾", 1, 0, 0, null, true);
	SetBlur("絵演卯水盾", true, 3, 500, 200, false);

	Wait(100);

	SetVertex("絵演蓮斬撃構", 1220, 700);
	SetBlur("絵演蓮斬撃構", true, 3, 500, 60, false);
	Rotate("絵演蓮斬撃構", 0, @0, @0, 30, null,true);
	Fade("絵演蓮斬撃構", 0, 1000, null, true);

	Rotate("絵演蓮斬撃構", 150, @0, @0, 0, Dxl3,false);
	Move("絵演蓮斬撃構", 100, -280, -90, null, false);
	Wait(140);

	//Fade("絵演蓮斬撃効果", 0, 1000, null, true);
	//DrawTransition("絵演蓮斬撃効果", 100, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", false);

	Request("プロセス", Start);//剣閃効果

	$ダメージＬ=90;
	$現東江ＨＰ=$現東江ＨＰ-$ダメージＬ;
	RMDControlInL(1000,$現東江ＨＰ);

	MusicStart("SE03",0,700,0,1000,null,false);
	Zoom("絵演卯水盾", 300, 1500, 1500, Dxl3, false);
	Fade("絵演卯水盾", 300, 700, null, false);

	WaitAction("@絵演蓮斬撃構", null);
	Shake("絵演蓮斬撃構", 100, 2, 4, 0, 0, 1000, null, false);

	Wait(150);

	Fade("絵演蓮斬撃構", 0, 0, null, true);
	Fade("絵演蓮突進構", 0, 1000, null, true);

	CreateSE("SE04","se戦闘_動作_跳躍低01");
	MusicStart("SE04",0,700,0,1600,null,false);
	Zoom("絵演蓮突進構", 200, 2000, 2000, null, false);
	Move("絵演蓮突進構", 200, -1024, 800, null, true);

	Zoom("絵演卯水盾", 10000, 1600, 1600, null, false);
	Fade("絵演卯水盾", 500, 0, null, true);

//　蓮が戻ってくる。

	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	PrintGO("上背景", 10010);

	CreateTextureSP("絵専", 1110, 0, Middle, "cg/ev/ev900ライム対戦蒼葉VS東江2.jpg");
	Zoom("絵専", 0, 1200, 1200, null, true);

	Zoom("絵専", 400, 1000, 1000, Dxl1, false);
	FadeDelete("上背景", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000120a01">
"-! He's pretty tough&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	RMDControlOutL(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000130b02">
"Now it's my turn&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※東江、「無」をセット。
//　卯水の周りを梵字の玉がいくつか浮かび、それぞれ青白い炎に包まれて蒼葉の方へ高速で飛んでくる。

	PrintGO("上背景", 10010);
	CreateColorSP("絵色黒", 10000, "000000");

	CreateColorSP("絵色下背景", 10, "000000");
	CreateTextureEX("絵演卯水弱攻撃抜", 1100, Center, -497, "cg/ev/x/ev010卯水a.png");
	Zoom("絵演卯水弱攻撃抜", 0, 2000, 2000, null, true);
	CreateTextureSP("絵演卯水弱攻撃", 1100, Center, -1290, "cg/ev/l/ev010卯水a_l.jpg");

	Move("絵演卯水弱攻撃*", 3000, @0, @50, DxlAuto, false);

	FadeDelete("上背景", 500, null, true);
	Fade("絵色黒", 500, 0, null, true);

	Wait(1000);

	EffectTxtinA("東江","無");
	EffectTxtinB("東江","無");

	Fade("絵色黒", 250, 1000, null, true);
	Fade("絵演卯水弱攻撃*", 0, 0, null, true);


	CreateTextureEX("絵演卯水弱攻撃梵字見", 1100, Center, -282, "cg/ev/x/ev010卯水a.png");
	Zoom("絵演卯水弱攻撃梵字見", 0, 750, 750, null, true);

	CreateColorSP("絵演卯水弱攻撃梵字効果黒", 1101, "000000");

	CreateTextureEX("絵演卯水弱攻撃梵字見効果", 1105, Center, Middle, "cg/ef/efv卯水_曼荼羅刃.png");
	CreateTextureEXadd("絵演卯水弱攻撃梵字見効果光", 1105, Center, Middle, "cg/ef/efv卯水_曼荼羅刃.png");
	Zoom("絵演卯水弱攻撃梵字見効果*", 0, 250, 250, null, true);
	SetBlur("絵演卯水弱攻撃梵字見効果光", true, 3, 500, 60, false);


	Delete("絵色黒");

	CreateSE("SE01","se擬音_効果_力東江01");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,1200,0,1500,null,false);

	Zoom("絵演卯水弱攻撃梵字見効果*", 200, 780, 780, Dxl3, false);

	Fade("絵演卯水弱攻撃梵字見効果*", 0, 1000, null, true);
	Fade("絵演卯水弱攻撃梵字見効果光", 200, 0, null, true);

	Fade("絵演卯水弱攻撃梵字見", 0, 1000, null, true);
	Fade("絵演卯水弱攻撃梵字効果黒", 200, 0, null, true);


	Zoom("絵演卯水弱攻撃梵字見効果", 1000, 880, 880, DxlAuto, false);
	Fade("絵演卯水弱攻撃梵字見効果", 1000, 850, DxlAuto, true);

	CreateTextureEX("絵演卯水弱攻撃梵字球体四", 1110, 113, 157, "cg/ev/x/ev010卯水a_攻撃用球体_x01s.png");//左
	CreateTextureEX("絵演卯水弱攻撃梵字球体参", 1110, 355, 413, "cg/ev/x/ev010卯水a_攻撃用球体_x01s.png");//下
	CreateTextureEX("絵演卯水弱攻撃梵字球体弐", 1110, 606, 157, "cg/ev/x/ev010卯水a_攻撃用球体_x01s.png");//右
	CreateTextureEX("絵演卯水弱攻撃梵字球体壱", 1110, 355, -88, "cg/ev/x/ev010卯水a_攻撃用球体_x01s.png");//上
	Rotate("絵演卯水弱攻撃梵字球体*", 60000, @0, @0, 36000000, null,false);

	CreateSE("SE02a","se擬音_効果_力東江01");
	CreateSE("SE02b","se擬音_効果_力東江01");
	CreateSE("SE02c","se擬音_効果_力東江01");
	CreateSE("SE02d","se擬音_効果_力東江01");

	CreateColorEX("絵演卯水弱攻撃白板", 1200, "FFFFFF");

	MusicStart("SE02a",0,1200,0,800,null,false);
	Zoom("絵演卯水弱攻撃梵字球体壱", 200, 1200, 1200, null, false);
	Fade("絵演卯水弱攻撃梵字球体壱", 200, 1000, null, true);

	MusicStart("SE02b",0,1200,0,800,null,false);
	Zoom("絵演卯水弱攻撃梵字球体弐", 200, 1200, 1200, null, false);
	Fade("絵演卯水弱攻撃梵字球体弐", 200, 1000, null, true);

	MusicStart("SE02c",0,1200,0,800,null,false);
	Zoom("絵演卯水弱攻撃梵字球体参", 200, 1200, 1200, null, false);
	Fade("絵演卯水弱攻撃梵字球体参", 200, 1000, null, true);

	MusicStart("SE02d",0,1200,0,800,null,false);
	Zoom("絵演卯水弱攻撃梵字球体四", 200, 1200, 1200, null, false);
	Fade("絵演卯水弱攻撃梵字球体四", 200, 1000, null, true);

	CreateSE("PSE31a1","se戦闘_動作_跳躍低02");
	MusicStartSet("PSE31a1",500,0,1200,null,false);
	CreateSE("PSE31b1","se戦闘_動作_跳躍低02");
	MusicStartSet("PSE31b1",500,0,1200,null,false);
	CreateSE("PSE31c1","se戦闘_動作_跳躍低02");
	MusicStartSet("PSE31c1",500,0,1200,null,false);
	CreateSE("PSE31d1","se戦闘_動作_跳躍低02");
	MusicStartSet("PSE31d1",500,0,1200,null,false);

//球体が螺旋を描きながら飛んでくる
	Proc_dm5590_vs_03();
	Wait(200);

//画面を白に
	Fade("絵演卯水弱攻撃白板", 200, 1000, null, true);

//球体画面横移動：準備
	Delete("絵演卯水弱攻撃梵字球体*");
	Delete("絵演卯水弱攻撃梵字見*");
	Delete("絵演卯水弱攻撃梵字見*");

	CreateColorSP("絵演高速背景中央黒", 11, "000000");
	DrawTransition("絵演高速背景中央黒", 1, 0, 100, 500, null, "cg/data/slide_05_00_1.png", true);

	CreateTextureSP("絵演高速背景壱", 10, 0, Middle, "cg/ef/efbg効果91.jpg");
	CreateTextureSP("絵演高速背景弐", 10, 0, Middle, "cg/ef/efbg効果91.jpg");
	CreateSCR1("@絵演高速背景壱","@絵演高速背景弐",300,-4000,@0);

	CreateTextureSP("絵演卯水弱攻撃梵字球体四", 1110, 113, 72, "cg/ev/x/ev010卯水a_攻撃用球体_x01s.png");//左
	Shake("絵演卯水弱攻撃梵字球体四", 600000, 1, 8, 0, 0, 1000, null, false);
	CreateTextureSP("絵演卯水弱攻撃梵字球体参", 1110, 355, 144, "cg/ev/x/ev010卯水a_攻撃用球体_x01s.png");//下
	Shake("絵演卯水弱攻撃梵字球体参", 600000, 1, 6, 0, 0, 1000, null, false);
	CreateTextureSP("絵演卯水弱攻撃梵字球体弐", 1110, 606, 360, "cg/ev/x/ev010卯水a_攻撃用球体_x01s.png");//右
	Shake("絵演卯水弱攻撃梵字球体弐", 600000, 1, 4, 0, 0, 1000, null, false);
	Move("絵演卯水弱攻撃梵字球体*", 0, @-1024, @0, null, true);
	CreateTextureSP("絵演卯水弱攻撃梵字球体壱", 1110, Center, Middle, "cg/ev/x/ev010卯水a_攻撃用球体_x01s.png");//上
	Position("@絵演卯水弱攻撃梵字球体壱", $x1, $y1);
	Shake("絵演卯水弱攻撃梵字球体壱", 600000, 1, 3, 0, 0, 1000, null, false);
	Zoom("絵演卯水弱攻撃梵字球体*", 0, 1100, 1100, null, true);

	CreateMovieEX("絵演動画", 4000, Center, Middle, true, true, "dx/mv0003集中線04_白&.ngs");
	Zoom("絵演動画", 0, 3000, 2500, null, true);
	DrawTransition("絵演動画", 1, 0, 500, 500, null, "cg/data/slide_05_00_0.png", true);

	Rotate("絵演卯水弱攻撃梵字球体*", 600000, @0, @0, 10000000, null,false);
//球体画面横移動：準備ここまで↑↑↑

//球体画面横移動する前に中央から寄り
	CreateSE("SE01","se戦闘_動作_跳躍滞空01");
	MusicStart("SE01",1000,700,0,2000,null,false);
	SetFrequency("SE01", 2000, 500, null);
	Fade("絵演動画", 2000, 700, null, false);
	Zoom("絵演卯水弱攻撃梵字球体壱", 0, 8000, 8000, null, true);
	Fade("絵演卯水弱攻撃白板", 200, 0, null, false);
	Position("@絵演卯水弱攻撃梵字球体壱", $x1, $y1);
	BezierMove("絵演卯水弱攻撃梵字球体壱", 2000, (@0,@0){100,200}{200,100}($x1,$y1), AxlDxl, false);
	Zoom("絵演卯水弱攻撃梵字球体壱", 2000, 1100, 1100, AxlDxl, true);
	SetVolumeEX("SE01", 1000, 0, null);

	Wait(200);

//球体時間差突進：準備
	CreateProcessEX("Pr04a", "Proc_dm5590_vs_04aAct");
	CreateProcessEX("Pr04b", "Proc_dm5590_vs_04bAct");
	CreateProcessEX("Pr04c", "Proc_dm5590_vs_04cAct");
	CreateProcessEX("Pr04d", "Proc_dm5590_vs_04dAct");

	CreateSE("PSE04a1","se戦闘_ウサギ_光突進01");
	MusicStartSet("PSE04a1",700,0,2000,null,false);

	CreateSE("PSE04b1","se戦闘_ウサギ_光突進01");
	MusicStartSet("PSE04b1",700,-400,2000,null,false);

	CreateSE("PSE04c1","se戦闘_ウサギ_光突進01");
	MusicStartSet("PSE04c1",700,400,2000,null,false);

	CreateSE("PSE04d1","se戦闘_ウサギ_光突進01");
	MusicStartSet("PSE04d1",700,200,2000,null,false);


	CreateSE("PSE04a2","se戦闘_ライム_紋章浸透汎用02");
	MusicStartSet("PSE04a2",700,0,2000,null,false);

	CreateSE("PSE04b2","se戦闘_ライム_紋章浸透汎用02");
	MusicStartSet("PSE04b2",700,-400,2000,null,false);

	CreateSE("PSE04c2","se戦闘_ライム_紋章浸透汎用02");
	MusicStartSet("PSE04c2",700,400,2000,null,false);

	CreateSE("PSE04d2","se戦闘_ライム_紋章浸透汎用02");
	MusicStartSet("PSE04d2",700,200,2000,null,false);

//球体時間差突進：準備ここまで↑↑↑

//球体時間差突進
	Request("Pr04a", Start);
	Wait(150);
	Request("Pr04b", Start);
	Wait(150);
	Request("Pr04c", Start);
	Wait(800);
	Request("Pr04d", Start);

	Wait(2000);

	CreateColorSP("絵色黒", 10000, "000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("@Pr*");
	Delete("絵演卯水*");
	Delete("絵演高速背景*");
	SCR1stop();

//蓮防御に移行＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

	CreateTxtinEffectS(3900,"蓮","御");

	CreateTextureEX("絵専下", 3110, -210, -120, "cg/ev/ev950蓮バトル汎用防御_効果.jpg");

	CreateTextureEX("絵専背景効果", 3120, -2000, -440, "cg/ev/l/ev950蓮バトル汎用防御_効果_l.jpg");
	SetVertex("絵専背景効果", 1453, 830);
	Zoom("絵専背景効果", 0, 1100, 1110, null, true);

	CreateTextureEX("絵専背景", 3110, -2000, -440, "cg/ev/l/ev950蓮バトル汎用防御_l.jpg");
	Zoom("絵専背景", 0, 1500, 1500, null, true);

	FadeDelete("絵演動画", 800, null, false);

	DrawDelete("絵色黒", 150, 100, null, "slide_01_02_0", false);

	CreateVOICE("蒼葉","dm55/9000140a01");//「蓮、防御！」
	$SETime = RemainTime("蒼葉")-100;
	CreateVOICE("蓮","dm02/0000420a06");//「了解！」
	$SETime2 = RemainTime("蓮")-100;

	CreateSE("SE51","se戦闘_動作_跳躍低01");
	MusicStart("SE51",0,700,0,800,null,false);

	Position("@絵専背景", $x1, $y1);
	Zoom("絵専背景", 800, 1000, 1000, Dxl3, false);
	BezierMove("絵専背景", 800, ($x1,$y1){-1920,-380}{-1650,-370}(-1170,-490), Dxl3, false);
	Fade("絵専背景", 600, 1000, null, false);

	//Wait(600);

	Delete("@PSE*");
	MusicStart("蒼葉",0,1600,0,1000,null,false);
	WaitKey($SETime);

	SetVolumeEX("蒼葉", 150, 0, null);
	MusicStart("蓮",0,1600,0,1000,null,false);
	WaitKey($SETime2);

	EffectTxtinS(700,"蓮","御");

	$ダメージＲ=0;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	CreateSE("SE01","se戦闘_衝撃_防壁発動01");
	MusicStart("SE01",0,700,0,1100,null,false);
	CreateColorSPadd("絵色白", 4900, "FFFFFF");
	FadeDelete("絵色白", 1000, null, false);

	Fade("絵専下", 0, 1000, null, true);

	Position("@絵専背景", $x1, $y1);
	Move("絵専背景効果", 0, $x1, $y1, null, true);
	Fade("絵専背景効果", 0, 1000, null, true);
	SetBlur("絵専背景効果", true, 3, 500, 250, false);
	Wait(100);
	Zoom("絵専背景効果", 1000, 1000, 1000, null, false);
	Fade("絵専背景効果", 800, 0, null, false);
	Wait(500);
	Fade("絵専背景", 800, 0, null, true);

//ヒットエフェクト準備
	CreateSE("SE16","se戦闘_衝撃_防壁決壊01");

	CreateSE("SE11","se戦闘_打撃_ヒット低04");
	CreateSE("SE12","se戦闘_打撃_ヒット低04");
	CreateSE("SE13","se戦闘_打撃_ヒット低04");
	CreateSE("SE14","se戦闘_打撃_ヒット低04");

	CreateTextureEXadd("絵演効果火花", 4900, Center, Middle, "cg/ef/efx02火花電光01.jpg");
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);

	CreateMaskEX("覆", 0, 0, 0, "cg/data/circle_03_00_1.png", false);
	Zoom("覆", 0, 2000, 2000, null, true);

	CreateColorEXadd("絵白転", 5000, "FFFFFF");
	CreateColorEXadd("覆/絵色白", 4890, "FFFFFF");

	Position("絵専下", $x1, $y1);//原点を取得
	SetVolumeEX("蓮", 150, 0, null);

//ランダムヒットエフェクト01＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
//防御壁いきなり決壊、以降のダメージは大きい
	MusicStart("SE11",0,700,0,1000,null,false);
	MusicStart("SE16",0,1200,0,1000,null,false);

	Fade("覆/絵色白", 0, 1000, null, true);

	CreateTextureSP("絵専下", 3110, $x1, $y1, "cg/ev/ev950蓮バトル汎用防御.jpg");
	CreateTextureSPadd("絵専下効果", 3111, $x1, $y1, "cg/ev/ev950蓮バトル汎用防御_効果.jpg");

	$ダメージＲ=100;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	Fade("絵専下効果", 800, 0, null, false);
	DrawDelete("絵専下効果", 4000, 100, null, "zoom_01_00_1", false);
	FadeFFR3("絵専下", 0,1000, 200, 0, 0, 30,null, false);
	Fade("覆/絵色白", 170, 0, null, true);

	Wait(300);

	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト02＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE12",0,1000,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=300;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト03＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE13",0,1000,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=300;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);


	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト04＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE14",0,1000,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=300;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Wait(100);

	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す


/*
	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000140a01">
"Ren&, defense!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
*/

//※蓮にシールド張らせて防御する。１つは弾くことができるが、
//　いくつかが蓮のシールドにギリギリめりこんでくる。蓮苦戦。
//　なんとか弾くが、蓮の方にダメージが出る。

	CreateTextureEX("絵背景", 5010, Center, Middle, "cg/bg/bg201051_0_ライム東江.jpg");
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	Fade("絵背景", 0, 1000, null, true);
	FadeDelete("絵色白", 70, null, true);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,1200,0,1000,null,false);
	BGPlainShake(5020,300,0,20,0,0,1000,null,true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000150a01">
"Ren&, are you okay!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	$NoTextBoxDelete=true;
	PrintGO("上背景", 9900);
	Delete("@覆*");
	CreateTextureSP("絵背景", 10, Center, Middle, "cg/bg/bg201051_0_ライム東江.jpg");
	FadeDelete("上背景", 0, null, true);

	RMDControlOutR(0);

{	Fw("fw蓮_通常マントなし_normal");}//人型裸
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000160a06">
"Yeah&."

{	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000170a01">
"Shit&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蒼葉の攻撃。「慶」セット。蓮の両腕からぐぐっと刃が出てきて、そこにビリッと電流が走る。
//　腕を交差させて電気溜め→東江に向かって腕を開いて放つ。

	EffectTxtinSDelete("蓮","慶");
	CreateTxtinEffectS(4000,"蓮","慶");

//剣砲定義
	CreateTextureEXadd("EF1", 500, center, Middle, "cg/ev/x/ev950蓮の剣砲構え_効果風圧_x01.png");
	SetVertex("EF1", 514, 435);
	Zoom("EF1", 0, 2300, 2300, null, true);

	CreateTextureEXadd("EF2", 1000, -212, 27, "cg/ef/efx02火花電光01.jpg");
	Zoom("EF2", 0, 1800, 1800, null, true);

	CreateColorEXadd("EF3", 5000, "FFFFFF");
	DrawTransition("EF3", 0, 500, 500, 100, null, "cg/data/beam_03_00_0.png", true);
	Fade("EF3", 0, 0, null, true);

	CreateColorEXadd("EF4", 5000, "FFFFFF");

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	CreateSE("SE02","se戦闘_打撃_風切り高01");
	CreateSE("SE03","se戦闘_動作_跳躍低01");
	CreateSE("SE04","se戦闘_剣撃_地面に刺す01");
	CreateSE("SE05","se擬音_精神_ひび02");
	CreateSE("SE06","se擬音_精神_脱出01");
	CreateSE("SE07","se戦闘_衝撃_破損01a");
	CreateSEEX("SE08","se戦闘_メガ砲_チャージ01");

	CreateMovieEX("絵動画", 2000, 120, 170, true, true, "dx/mv0003集中線01_白&.ngs");
	Zoom("絵動画",0,5000,3000,null,true);

	CloudZoomSmokeSet01("稲妻",200,"cg/ev/x/ev950蓮の剣砲構え_効果紫電_x01.png");

	//CreateTextureEX("絵背景", 100, center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	//SetShade("絵背景", HEAVY);
	//Zoom("絵背景", 0, 1500, 1500, null, true);

	CreateTextureEX("蓮攻撃", 100, -250, Middle, "cg/ev/ev950蓮の剣砲構え.jpg");
	Request("蓮攻撃", Smoothing);
	Rotate("蓮攻撃", 0, @0, @0, @50, null,true);
	Zoom("蓮攻撃", 0, 1300, 1300, null, true);
	SetBlur("蓮攻撃", true, 2, 500, 50, false);

	CreateTextureEXadd("光", 100, Center, Middle, "cg/ef/effi暴露成功_ef01.png");
	Move("光", 0, @-250, @50, null, true);
	Zoom("光", 0, 5000, 5000, null, true);

	RotetoLoopOGM02("光プロセス","光",1800,-3600);
	RotetoLoopOGM03("光プロセス2","EF1",34000,-3600);

	Shake("EF1", 10000000, 3, 3, 3, 3, 900, null, false);
	Shake("光", 10000000, 3, 3, 3, 3, 900, null, false);

	SetVolumeEX("SEL21", 300, 0, null);
	SetVolumeEX("SE22", 300, 0, null);
	FadeDelete("絵色白", 100, null, false);

	Delete("絵演背景");

//蓮剣砲構え
	MusicStart("SE03",0,700,0,1000,null,false);

	Fade("絵背景EF02", 100, 1000, null, false);
	Fade("絵背景", 100, 1000, null, false);
	Zoom("絵背景", 650, 2000, 2000, AxlDxl, false);
	//BezierMove("絵背景", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@15,@-150), null, false);
	BezierMove("絵背景EF02", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@150,@-150), null, false);

	Wait(100);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景EF01", 0, 1000, null, true);
	Move("絵背景EF01", 400, -200, 0, Dxl2, false);
	FadeDelete("絵背景EF01", 200, Axl2, false);

	//Wait(100);

	FadeDelete("絵背景EF02", 200, Axl2, false);

	MusicStart("SE02",0,700,0,1000,null,false);

	//Wait(100);

	MusicStart("SE04",0,700,0,1000,null,false);

	//SetBlur("蓮攻撃", true, 2, 300, 1000, false);
	Zoom("蓮攻撃", 300, 1100, 1100, Dxl3, false);
	Fade("蓮攻撃", 100, 1000, null, false);
	Move("蓮攻撃", 300, -180, -140, Dxl3, false);
	Rotate("蓮攻撃", 300, @0, @0, 0, Dxl2,true);
	SetBlur("蓮攻撃", false, 2, 300, 1000, false);

	WaitAction("@蓮攻撃", null);
	SetBlur("蓮攻撃", true, 2, 500, 50, false);

	EffectTxtinS(700,"蓮","慶");

//蓮剣砲チャージ
	MusicStart("SE08",0,600,0,200,null,true);
	Shake("蓮攻撃", 10000000, 3, 3, 3, 3, 900, null, false);
	CloudZoomSmokeStart01(1500,50,700,4500,900,120,250,240,200,Dxl1);

	Fade("絵動画", 3000, 1000, Axl1, false);
	Fade("EF1", 3000, 500, null, false);
	Fade("光", 3000, 500, null, false);

	Zoom("蓮攻撃", 3000, 1000, 1000, AxlDxl, false);

	Shake("EF1", 500, 10, 3, 0, 0, 1000, null, false);
	Move("EF1", 300, -180, -140, Dxl1, false);

	MoveFTP1("@蓮攻撃",3000,3,1);
	MoveFTP2("@EF1",3700,3,2);

	Wait(3000);


//蓮剣砲発射
	Shake("EF2", 1000, 10, 21, 0, 0, 1000, null, false);
	Fade("EF2", 0, 1000, null, true);
	Wait(50);

	MoveFTP1stop();
	MoveFTP2stop();

	MusicStart("SE05",0,700,0,1000,null,false);
	MusicStart("SE06",0,700,0,1000,null,false);
	SetVolumeEX("SE08", 1000, 0, null);

	SetBlur("蓮突進", true, 2, 300, 50, false);
	Move("蓮攻撃", 200, -20, -200, Dxl2, false);
	Fade("EF3", 50, 1000, null, true);

	Shake("蓮攻撃", 1000, 10, 3, 12, 7, 900, null, false);

	Wait(50);

	Fade("EF4", 200, 1000, Axl1, true);

	MusicStart("SE07",0,1000,0,1000,null,false);

	Wait(300);

//　卯水、曼荼羅のシールドで防御。完全に弾かれる。
//画面切り替えて東江側に
	CreateColorSP("絵黒幕", 10000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("@光*");
	Delete("@蓮攻撃*");
	Delete("@稲妻*");
	Delete("@絵動画");
	Delete("@EF*");

	CreateTextureSP("絵専", 1100, Center, -1280, "cg/ev/l/ev010卯水a_l.jpg");
	Request("絵専", Smoothing);
	Zoom("絵専", 0, 500, 500, null, true);
	SetBlur("絵専", true, 3, 500, 60, false);

	CreateTextureEXadd("絵演卯水盾", 1110, Center, Middle, "cg/ef/efv卯水_曼荼羅防御.png");
	CreateSE("SE03","se戦闘_衝撃_防壁発動01");
	Zoom("絵演卯水盾", 1, 0, 0, null, true);
	SetBlur("絵演卯水盾", true, 3, 500, 200, false);

	CreateSE("SE04","se戦闘_衝撃_威力拡散01");

	CreateColorEX("絵演卯水盾白靄", 1120, "FFFFFF");
	DrawTransition("絵演卯水盾白靄", 1, 0, 500, 100, null, "cg/data/effect_01_00_0.png", true);

	CreateMovieSP("絵演動画", 2100, Center, Middle, true, true, "dx/mv0003集中線01_黒&.ngs");
	Zoom("絵演動画", 0, 3000, 3000, null, true);

	$ダメージＬ=0;
	$現東江ＨＰ=$現東江ＨＰ-$ダメージＬ;
	RMDControlInL(0,$現東江ＨＰ);

	Fade("絵演動画", 600, 0, Dxl2, false);
	Zoom("絵専", 800, 1000, 1000, Dxl2, false);
	DrawDelete("絵黒幕", 150, 100, null, "circle_01_00_0.png", true);

	Wait(600);

	$ダメージＬ=180;
	$現東江ＨＰ=$現東江ＨＰ-$ダメージＬ;
	RMDControlInL(1000,$現東江ＨＰ);

	MusicStart("SE03",0,700,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Zoom("絵演卯水盾", 300, 1500, 1500, Dxl3, false);
	Fade("絵演卯水盾", 300, 700, null, true);

	Fade("絵演卯水盾白靄", 0, 1000, null, true);
	Fade("絵演卯水盾白靄", 2000, 0, null, false);
	Request("絵演卯水盾", NormalRender);
	Zoom("絵演卯水盾", 10000, 1600, 1600, null, false);
	Fade("絵演卯水盾", 500, 0, null, true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000180a01">
"We're not even making a dent on him&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

	DeleteFw();
	RMDControlOutL(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateTextureEX("絵演", 5110, 0, -110, "cg/ev/ev900ライム対戦蒼葉VS東江2.jpg");
	Fade("絵演", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000190b02">
"Fufu&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

//※卯水が東江の前に出てくる。
	PrintGO("上背景", 10000);
	CreateTextureSP("絵背景", 10, Center, Middle, "cg/bg/bg201051_0_ライム東江.jpg");
{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",0,true);}
	FadeDelete("上背景", 500, null, true);

	SoundPlay("@dm021",0,450,true);//不穏２

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000200b02">
"This Usui is also modeled on Sei&. They have the same face&, can't you tell?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000210a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※卯水の顔アップ？

	DeleteFw();
	CreateTextureEX("絵演子供", 1110, Center, InBottom, "cg/ev/l/evf08蒼葉出生の秘密_l.jpg");
	SetTone("絵演子供", Monochrome);
	Move("絵演子供", 30000, @0, 0, null, false);
	Fade("絵演子供", 500, 1000, null, true);

	Fw("fw東江_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000220b02">
"Sei and Aoba&. The twins chosen by fate&. Sei&, given a name
 that means life&, and you&, a child who died after birth&.&.&.
 chosen by death itself&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw東江_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000230b02">
"Sei has the ability to give birth to things&, while you
 hold the power to destroy&. The two of you are one&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演生", 1120, -1024, -360, "cg/ev/l/ev515うずくまるセイ_l.jpg");
	SetTone("絵演生", Monochrome);
	Move("絵演生", 30000, -90, @0, null, false);
	Fade("絵演生", 500, 1000, null, true);
	Delete("絵演子供");

	Fw("fw東江_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000240b02">
"There were many times when Sei was comatose for the sake
 of brain and consciousness research&."

//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000250b02">
"Sei&, who had lost his liberty&, had only his heart working&, and gave birth to a large scale self consciousness&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",0,true);}

	FadeDelete("絵演生", 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000260b02">
"I would liken it to as if he had divided his own
 consciousness into a large amount of fragments&."

//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000270b02">
"When following the electro-magnetic waves of the
 consciousness he created&, one can enter various places&.
 It's simple as a network system&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000280b02">
"It does not mean that the consciousness functions on its
 own&, but if one follows down the network&, they can reach
 an area of their choosing and access it&."


{	St("C",740, @0,@0,"st東江_通常_smile");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000290b02">
"Aoba-kun&. It's even possible to communicate with you
 across it&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
Sei communicated to me&.&.&.?

That must've happened at some point&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵演風景", 1110, Center, Middle, "cg/ev/ev010ライムの様子.jpg");
	SetTone("絵演風景", Monochrome);

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);

	CreateProcessEX("プロセス", "Proc_dm5590_vs_05Act");
	Request("プロセス", Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000300b02">
"As we put Sei's ability to use&, we created personal dolls
 by brainwashing them by injecting Sei's consciousness into
 them&. Usui is one of them&. And so&, Rhyme was created&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Request("プロセス", Stop);
	Fade("絵演風景", 0, 1000, null, true);
	Delete("プロセス");
	FadeDelete("絵演風景", 500, null, true);

//※卯水表示

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000310b02">
"After that&, Sei's consciousness began to diffuse and
 gradually became weak&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000320a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@dm*", 1000, 0, null);

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000330b02">
"Usui is the second Sei&, in a sense&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm019",0,450,true);

//※東江、「虚」をセット。
//　卯水の周りに梵字の玉がいくつか浮かび上がり、それぞれ小さな曼荼羅型の刃に変化する。
//　それが勢いをつけて回転、蒼葉の方へ向かってくる。

	CreateColorEX("絵黒幕", 10000, "000000");
	Fade("絵黒幕", 400, 1000, null, true);

	DeleteAllSt(0,true);

//卯水最大攻撃素材定義分割(1/4)＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	CreateColorSP("絵黒仮下", 55, "000000");
	Fade("絵黒幕", 0, 0, null, true);

//定義：卯水引きの時の背景
	CreateColorEX("絵色", 50, "#000000");
	CreateTextureEXadd("絵背景", 50, Center, Middle, "cg/ef/efbg効果01.jpg");

	Fade("絵色", 0, 1000, null, true);
	Fade("絵背景", 0, 1000, null, true);

//定義：卯水カットイン
	CreateTextureEX("絵演卯水最大攻撃一", 1100, Center, Middle, "cg/ev/x/ev010卯水a_x01.jpg");
	CreateTextureEX("絵演卯水最大攻撃二", 1100, Center, Middle, "cg/ev/x/ev010卯水a_x02.jpg");
	CreateTextureEX("絵演卯水最大攻撃三", 1100, Center, Middle, "cg/ev/x/ev010卯水a_x03.jpg");
	CreateTextureEX("絵演卯水最大攻撃四", 1100, Center, Middle, "cg/ev/x/ev010卯水a_x04.jpg");
	CreateTextureEX("絵演卯水最大攻撃五", 1100, Center, Middle, "cg/ev/x/ev010卯水a_x05.jpg");
	CreateTextureEX("絵演卯水最大攻撃六", 1100, Center, Middle, "cg/ev/x/ev010卯水a_x06.jpg");
	Move("絵演卯水最大攻撃六", 0, @0, @-40, null, true);

//定義：卯水縮小用
	CreateTextureEX("絵演卯水最大攻撃全身", 1090, Center, -252, "cg/ev/x/ev010卯水a.png");

//定義：卯水曼荼羅
	CreateTextureEXover("絵演卯水最大攻撃曼荼羅前", 1190, Center, Middle, "cg/ef/efv卯水_曼荼羅刃.png");
	Zoom("絵演卯水最大攻撃曼荼羅前", 0, 500, 500, null, true);

	CreateTextureEXadd("絵演卯水最大攻撃曼荼羅後", 1190, Center, Middle, "cg/ef/efv卯水_曼荼羅刃.png");
	Zoom("絵演卯水最大攻撃曼荼羅後", 0, 980, 980, null, true);
	SetBlur("絵演卯水最大攻撃曼荼羅後", true, 3, 500, 100, false);


//定義：卯水攻撃の波動
	CreateMaskEX("絵覆", 0, 0, 0, "cg/data/zzex_circle_01_01_1.png", false);
	CreateTextureEX("絵覆/絵演卯水最大攻撃曼荼羅覇気", 1200, Center, Middle, "cg/ef/efクリアの歌声_l.jpg");
	Zoom("絵覆/絵演卯水最大攻撃曼荼羅覇気", 0, 1000, 1067, null, true);

	CreateColorEXadd("絵色白", 2000, "#FFFFFF");

	CreateTxtinEffectS(2000,"東江","虚");

//ここまで素材定義▲△△△＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

/*
&.卯水最大攻撃1/4
*/


//卯水カットイン
	CreateSE("SE21a","se擬音_効果_力東江01");
	CreateSE("SE21b","se擬音_効果_力東江01");
	CreateSE("SE21c","se擬音_効果_力東江01");
	CreateSE("SE21d","se擬音_効果_力東江01");
	CreateSE("SE21e","se擬音_効果_力東江01");

	$EF01Ftime=450;
	$EF01Wtime=50;
	$EF01Mtime=$EF01Ftime+$EF01Wtime*6;
	MusicStart("SE21a",0,700,0,500,null,false);
	Move("絵演卯水最大攻撃一", $EF01Mtime, @-40, @-40, DxlAuto, false);
	Fade("絵演卯水最大攻撃一", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("絵演卯水最大攻撃一", $EF01Ftime, 250, null, true);

	MusicStart("SE21b",0,700,0,500,null,false);
	Fade("絵演卯水最大攻撃一", 0, 0, null, true);
	Move("絵演卯水最大攻撃二", $EF01Mtime, @40, @0, DxlAuto, false);
	Fade("絵演卯水最大攻撃二", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("絵演卯水最大攻撃二", $EF01Ftime, 250, null, true);

	MusicStart("SE21c",0,700,0,500,null,false);
	Fade("絵演卯水最大攻撃二", 0, 0, null, true);
	Move("絵演卯水最大攻撃三", $EF01Mtime, @-40, @40, DxlAuto, false);
	Fade("絵演卯水最大攻撃三", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("絵演卯水最大攻撃三", $EF01Ftime, 250, null, true);

	MusicStart("SE21d",0,700,0,500,null,false);
	Fade("絵演卯水最大攻撃三", 0, 0, null, true);
	Move("絵演卯水最大攻撃四", $EF01Mtime, @0, @40, DxlAuto, false);
	Fade("絵演卯水最大攻撃四", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("絵演卯水最大攻撃四", $EF01Ftime, 250, null, true);

	MusicStart("SE21e",0,700,0,500,null,false);
	Fade("絵演卯水最大攻撃四", 0, 0, null, true);
	Move("絵演卯水最大攻撃五", $EF01Mtime, @0, @-40, DxlAuto, false);
	Fade("絵演卯水最大攻撃五", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("絵演卯水最大攻撃五", $EF01Ftime, 250, null, true);

	Fade("絵演卯水最大攻撃五", 0, 0, null, true);
	Move("絵演卯水最大攻撃六", $EF01Mtime, @0, @40, DxlAuto, false);
	Fade("絵演卯水最大攻撃六", 0, 1000, null, true);

	Wait(1000);

//文字エフェクト表示
	EffectTxtinS(700,"東江","虚");
	Wait(1000);

//卯水全身表示
	CreateSE("SE21f","se戦闘_動作_跳躍低01");
	MusicStart("SE21f",0,700,0,800,null,false);
	$EF02Ztime=350;
	Fade("絵演卯水最大攻撃全身", 0, 1000, null, true);
	Zoom("絵演卯水最大攻撃全身", 0, 6000, 6000, null, true);

	Zoom("絵演卯水最大攻撃六", $EF02Ztime, 25, 25, Dxl3, false);
	Fade("絵演卯水最大攻撃六", $EF02Ztime, 0, null, false);
	Move("絵演卯水最大攻撃全身", $EF02Ztime, @0, -476, Dxl3, false);
	Fade("絵演卯水最大攻撃全身", $EF02Ztime, 1000, null, false);
	Zoom("絵演卯水最大攻撃全身", $EF02Ztime, 100, 100, Dxl3, false);
	Fade("絵黒仮下", $EF02Ztime, 0, Dxl3, true);

	Wait(150);

//卯水曼荼羅を展開
	CreateSE("SE22a","se擬音_効果_力東江02");
	MusicStart("SE22a",0,700,0,1500,null,false);
	CreateSE("SE22b","se戦闘_ライム_紋章発動準備東江汎用01");
	SoundEffect("SE22b","SEWERPIPE");
	MusicStart("SE22b",0,700,0,500,null,false);
	Fade("絵演卯水最大攻撃曼荼羅前", 0, 1000, null, true);
	Fade("絵演卯水最大攻撃曼荼羅前", 200, 500, null, false);
	Zoom("絵演卯水最大攻撃曼荼羅前", 200, 700, 700, DxlAuto, true);

	Wait(100);

	Fade("絵演卯水最大攻撃曼荼羅後", 0, 750, null, true);
	Fade("絵演卯水最大攻撃曼荼羅後", 300, 500, null, false);
	Zoom("絵演卯水最大攻撃曼荼羅後", 300, 700, 700, Dxl3, true);

//卯水覇気が上がる
	CreateSE("SE23a","se戦闘_ライム_紋章発動01");
	MusicStart("SE23a",0,700,0,1500,null,false);
	CreateSE("SE23b","se擬音_効果_力東江02");
	MusicStart("SE23b",0,700,0,800,null,false);
	Rotate("絵覆/絵演卯水最大攻撃曼荼羅覇気", 50000, @0, @0, 1080, null,false);
	Fade("絵覆/絵演卯水最大攻撃曼荼羅覇気", 500, 500, null, false);
	DrawTransition("絵覆/絵演卯水最大攻撃曼荼羅覇気", 6000, 0, 350, 500, null, "cg/data/spiral_01_00_1.png", false);
	Zoom("絵覆", 3000, 10000, 10000, null, false);

	Wait(2000);

//卯水攻撃発射
	Fade("絵色白", 0, 1000, null, true);
	DrawTransition("絵色白", 250, 0, 1000, 100, Axl1, "cg/data/circle_03_00_0.png", false);

	Wait(1000);

//暗転中に蓮側の素材定義分割(2/4)＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

//定義：蓮防御
	CreateTextureEX("絵演蓮卯水最大攻撃防御", 1200, -1600, -100, "cg/ev/x/ev950蓮バトル汎用防御_蓮のみ_x00.png");
	Zoom("絵演蓮卯水最大攻撃防御", 0, 1200, 1200, null, true);

//定義：蓮足元に出る曼荼羅
	CreateTextureEXadd("絵演蓮卯水最大攻撃防御足元魔方陣", 1190, Center, 250, "cg/ef/efv卯水_曼荼羅刃_足元.png");

	CreateTextureEX("絵演蓮卯水最大攻撃防御足元魔方陣効果", 1190, Center, 250, "cg/ef/efv卯水_曼荼羅刃_足元.png");
	SetBlur("絵演蓮卯水最大攻撃防御足元魔方陣効果", true, 2, 500, 80, false);

//定義：蓮卯水の無に引き込まれる
	CreateTextureEX("絵演蓮卯水最大攻撃防御足元魔方陣覇気", 1200, Center, 0, "cg/ef/efクリアの歌声_l.jpg");

	CreateColorEX("絵色黒", 10100, "#000000");

//暗転中に蓮側の素材定義分割ここまで△▲△△＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

/*
&.卯水最大攻撃2/4
*/

//蓮アップから表示
	Fade("絵演卯水最大攻撃*", 0, 0, null, true);
	Fade("絵覆/絵演卯水最大攻撃*", 0, 0, null, true);

	Move("絵演蓮卯水最大攻撃防御", 5000, -1190, -250, null, false);
	Zoom("絵演蓮卯水最大攻撃防御", 5000, 1000, 1000, null, false);
	Fade("絵演蓮卯水最大攻撃防御", 0, 1000, null, true);

	Fade("絵色白", 300, 0, null, true);

	Wait(1500);

//蓮全身表示へ
	CreateSE("SE24a","se戦闘_動作_跳躍低01");
	MusicStart("SE24a",0,700,0,1500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Move("絵演蓮卯水最大攻撃防御", 200, -850, -820, Dxl2, false);
	Zoom("絵演蓮卯水最大攻撃防御", 200, 250, 250, Dxl2, false);
	Fade("絵色白", 300, 0, Axl3, false);

	Wait(500);

//蓮足元に曼荼羅が展開
	CreateSE("SE24a","se戦闘_衝撃_幻影01");
	Fade("絵演蓮卯水最大攻撃防御足元魔方陣", 500, 1000, null, true);

	MusicStart("SE24a",0,700,0,1500,null,false);
	Fade("絵演蓮卯水最大攻撃防御足元魔方陣効果", 0, 500, null, true);
	Move("絵演蓮卯水最大攻撃防御足元魔方陣効果", 2000, @0, @-200, Dxl1, false);
	Fade("絵演蓮卯水最大攻撃防御足元魔方陣効果", 400, 0, null, true);

	Wait(300);

//蓮卯水の無に取り込まれる
	CreateSE("SE25a","se戦闘_衝撃_幻影02");
	MusicStart("SE25a",0,700,0,1500,null,false);
	CreateSE("SE25b","se物体_東江タワー_地鳴り01aL");
	MusicStart("SE25b",0,700,0,1500,null,true);
	Rotate("絵演蓮卯水最大攻撃防御足元魔方陣覇気", 1000, @0, @0, 3600, null,false);
	Fade("絵演蓮卯水最大攻撃防御足元魔方陣覇気", 1000, 1000, null, false);
	DrawTransition("絵演蓮卯水最大攻撃防御足元魔方陣覇気", 300, 0, 1000, 100, null, "cg/data/circle_13_00_0.png", false);
	Zoom("絵演蓮卯水最大攻撃防御足元魔方陣覇気", 1000, 5000, 10000, null, false);
	Wait(700);
	Fade("絵色黒", 300, 1000, null, true);

//暗転中に蓮側の素材定義分割(3/4)＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

//定義：卯水の無背景
	//CreateColorEX("絵演背景卯水白", 51, "#FFFFFF");
	CreateTextureEX("絵演背景卯水白", 51, Center, Middle, "cg/ef/efbg宇宙02.jpg");
	//DrawEffect("絵演背景卯水白", 0, "LowWave", 100, 100, null);
	Zoom("絵演背景卯水白", 0, 400, 400, null, true);


//定義：蓮無の世界での影
	CreateTextureEX("絵演蓮卯水最大攻撃防御影", 1200, -1600, -100, "cg/ev/x/ev950蓮バトル汎用防御_蓮のみ_x00b.png");
	Zoom("絵演蓮卯水最大攻撃防御影", 0, 1200, 1200, null, true);


//定義：無の世界での梵字
	CreateTextureEX("絵演蓮卯水最大攻撃防御足元魔方陣影", 1190, Center, 1152, "cg/ef/efv卯水_曼荼羅刃_足元_b.png");
	Zoom("絵演蓮卯水最大攻撃防御足元魔方陣影", 0, 2000, 2000, null, true);

	CreateTextureEX("絵演蓮卯水最大攻撃防御梵字弥勒", 1190, -340, -240, "cg/ef/efv卯水_曼荼羅防御弥勒.png");
	Zoom("絵演蓮卯水最大攻撃防御梵字弥勒", 0, 1000, 1000, null, true);

	CreateTextureEX("絵演蓮卯水最大攻撃防御梵字普賢", 1190, 1124, -240, "cg/ef/efv卯水_曼荼羅防御普賢.png");
	Zoom("絵演蓮卯水最大攻撃防御梵字普賢", 0, 1000, 1000, null, true);

	CreateTextureEX("絵演蓮卯水最大攻撃防御梵字観音", 1210, -680, 140, "cg/ef/efv卯水_曼荼羅防御観音.png");
	Zoom("絵演蓮卯水最大攻撃防御梵字観音", 0, 2000, 2000, null, true);
	Rotate("絵演蓮卯水最大攻撃防御梵字観音", 0, @0, @180, @0, null,true);

	CreateTextureEX("絵演蓮卯水最大攻撃防御梵字文殊", 1210, 1344, 140, "cg/ef/efv卯水_曼荼羅防御文殊.png");
	Zoom("絵演蓮卯水最大攻撃防御梵字文殊", 0, 2000, 2000, null, true);
	Rotate("絵演蓮卯水最大攻撃防御梵字文殊", 0, @0, @180, @0, null,true);

//定義：梵字衝撃波
	$EFSeData=se戦闘_衝撃_幻影02;
	CreateShockEffect_dm5590_vs(1,1191);
	EffectSE("SEF01",$EFSeData,700,-250,1000,0);
	CreateShockEffect_dm5590_vs(4,1205);
	EffectSE("SEF04",$EFSeData,700,250,1000,0);
	CreateShockEffect_dm5590_vs(2,1191);
	EffectSE("SEF02",$EFSeData,700,250,1000,0);
	CreateShockEffect_dm5590_vs(3,1205);
	EffectSE("SEF03",$EFSeData,700,-250,1000,0);

	EffectSE("SEF11",$EFSeData,700,-250,1000,0);
	EffectSE("SEF14",$EFSeData,700,250,1000,0);
	EffectSE("SEF12",$EFSeData,700,250,1000,0);
	EffectSE("SEF13",$EFSeData,700,-250,1000,0);

	EffectSE("SEF21",$EFSeData,700,-250,1000,0);
	EffectSE("SEF24",$EFSeData,700,250,1000,0);
	EffectSE("SEF22",$EFSeData,700,250,1000,0);
	EffectSE("SEF23",$EFSeData,700,-250,1000,0);

	EffectSE("SEF31",$EFSeData,700,-250,1000,0);
	EffectSE("SEF34",$EFSeData,700,250,1000,0);
	EffectSE("SEF32",$EFSeData,700,250,1000,0);
	EffectSE("SEF33",$EFSeData,700,-250,1000,0);

	Request("@SEF01", Lock);
	Request("@SEF02", Lock);
	Request("@SEF03", Lock);
	Request("@SEF04", Lock);
	Request("@SEF11", Lock);
	Request("@SEF12", Lock);
	Request("@SEF13", Lock);
	Request("@SEF14", Lock);
	Request("@SEF21", Lock);
	Request("@SEF22", Lock);
	Request("@SEF23", Lock);
	Request("@SEF24", Lock);
	Request("@SEF31", Lock);
	Request("@SEF32", Lock);
	Request("@SEF33", Lock);
	Request("@SEF34", Lock);

//暗転中に蓮側の素材定義分割ここまで△△▲△＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

/*
&.卯水最大攻撃3/4
*/

	SetVolumeEX("SE2*", 800, 0, null);

//蓮卯水の無に出てくる
	CreateSE("SE31a","se擬音_効果_おどろおどろ01");
	SoundEffect("SE31a","SEWERPIPE");
	MusicStart("SE31a",2000,1000,0,500,null,true);
	Fade("絵演蓮卯水最大攻撃防御*", 0, 0, null, true);
	Fade("絵演背景卯水白", 0, 1000, null, true);
	Fade("絵演蓮卯水最大攻撃防御影", 0, 1000, null, true);
	Fade("絵演蓮卯水最大攻撃防御梵字*", 0, 1000, null, true);
	Fade("絵演蓮卯水最大攻撃防御足元魔方陣影", 0, 1000, null, true);

	Zoom("絵演蓮卯水最大攻撃防御影", 0, 2000, 2000, null, true);

	Fade("絵色黒", 500, 0, null, true);

	Wait(1000);

//蓮カメラが引くと梵字に囲まれてる

	$EF03Ztime=6000;
	Move("絵演蓮卯水最大攻撃防御影", $EF03Ztime, -900, -720, Dxl2, false);
	Zoom("絵演蓮卯水最大攻撃防御影", $EF03Ztime, 180, 180, Dxl2, false);

	Move("絵演蓮卯水最大攻撃防御足元魔方陣影", $EF03Ztime, @0, 290, Dxl2, false);
	Zoom("絵演蓮卯水最大攻撃防御足元魔方陣影", $EF03Ztime, 1000, 1000, Dxl2, false);

	Move("絵演蓮卯水最大攻撃防御梵字弥勒", $EF03Ztime, -60, -70, Axl1, false);
	Zoom("絵演蓮卯水最大攻撃防御梵字弥勒", $EF03Ztime, 500, 500, Axl1, false);
	Move("絵演蓮卯水最大攻撃防御梵字普賢", $EF03Ztime, 590, -70, Axl1, false);
	Zoom("絵演蓮卯水最大攻撃防御梵字普賢", $EF03Ztime, 500, 500, Axl1, false);
	Move("絵演蓮卯水最大攻撃防御梵字観音", $EF03Ztime, -150, -40, Axl1, false);
	Zoom("絵演蓮卯水最大攻撃防御梵字観音", $EF03Ztime, 1000, 1000, Axl1, false);
	Move("絵演蓮卯水最大攻撃防御梵字文殊", $EF03Ztime, 700, -30, Axl1, false);
	Zoom("絵演蓮卯水最大攻撃防御梵字文殊", $EF03Ztime, 1000, 1000, Axl1, true);


//蓮梵字からの攻撃を受ける

	Position("@絵演蓮卯水最大攻撃防御影", $x1, $y1);

//弥勒の位置：EFS1
	$ULX=231;
	$UY=170;

//文殊の位置：EFS4
	$DRX=960;
	$DY=280;

//普賢の位置：EFS2
	$URX=835;
	$UY=170;

//観音の位置：EFS3
	$DLX=160;
	$DY=280;

	$EF04Wtime=40;
	Effectshock(1,$ULX,$UY,1500,"@SEF01");
	FadeFFR2("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF04");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF02");
	FadeFFR3("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF03");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);

	$EF04Wtime=40;
	//Position("@絵演蓮卯水最大攻撃防御影", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF11");
	FadeFFR2("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF14");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF12");
	FadeFFR3("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF13");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);

	$EF04Wtime=40;
	//Position("@絵演蓮卯水最大攻撃防御影", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF21");
	FadeFFR2("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF24");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF22");
	FadeFFR3("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF23");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);

	$EF04Wtime=40;
	//Position("@絵演蓮卯水最大攻撃防御影", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF31");
	FadeFFR2("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF34");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF32");
	FadeFFR3("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF33");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);

	$EF04Wtime=40;
	Effectshock(1,$ULX,$UY,1500,"@SEF01");
	FadeFFR2("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF04");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF02");
	FadeFFR3("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF03");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);

	$EF04Wtime=40;
	//Position("@絵演蓮卯水最大攻撃防御影", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF11");
	FadeFFR2("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF14");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF12");
	FadeFFR3("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF13");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);

	$EF04Wtime=40;
	//Position("@絵演蓮卯水最大攻撃防御影", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF21");
	FadeFFR2("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF24");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF22");
	FadeFFR3("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF23");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);

	//Position("@絵演蓮卯水最大攻撃防御影", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF31");
	FadeFFR2("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF34");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF32");
	FadeFFR3("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF33");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);


//画面が引き暗黒に包まれる
	SetVolumeEX("SE31a", 800, 0, null);
	Fade("絵色黒", 750, 1000, null, false);
	Move("@絵演蓮卯水最大攻撃防御影", 1500, -897, -600, null, false);
	Move("@絵演蓮卯水最大攻撃防御足元魔方陣影", 3000, @0, 288, null, false);
	Zoom("@絵演蓮卯水最大攻撃防御影", 1500, 100, 100, null, false);
	Zoom("@絵演蓮卯水最大攻撃防御足元魔方陣影", 1500, 700, 700, null, false);

	Effectshock(1,$ULX,$UY,1500,"@SEF01");
	FadeFFR2("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF04");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF02");
	FadeFFR3("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF03");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);


	//Position("@絵演蓮卯水最大攻撃防御影", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF11");
	FadeFFR2("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF14");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF12");
	FadeFFR3("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF13");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);


	//Position("@絵演蓮卯水最大攻撃防御影", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF21");
	FadeFFR2("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF24");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF22");
	FadeFFR3("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF23");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);


	//Position("@絵演蓮卯水最大攻撃防御影", $x1, $y1);
	Effectshock(1,$ULX,$UY,1500,"@SEF31");
	FadeFFR2("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(4,$DRX,$DY,3000,"@SEF34");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(2,$URX,$UY,1500,"@SEF32");
	FadeFFR3("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);
	Effectshock(3,$DLX,$DY,3000,"@SEF33");
	FadeFFR("@絵演蓮卯水最大攻撃防御影", 0,1000, 200, 0, 0, 20,Dxl1, false);
	Wait($EF04Wtime);
	//Move("@絵演蓮卯水最大攻撃防御影", 4, $x1, $y1, null, true);

	WaitAction("@絵色黒", null);

//暗転中に蓮側の素材定義分割(4/4)＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

//定義：卯水の小宇宙
	CreateTextureEX("絵演蓮卯水最大攻撃卯水全身弐", 1100, Center, -1320, "cg/ev/l/ev010卯水a_l.jpg");
	Zoom("絵演蓮卯水最大攻撃卯水全身弐", 0, 2000, 2000, null, true);
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙", 1110, Center, Middle, "cg/ef/ef卯水の宇宙.png");
	Zoom("絵演蓮卯水最大攻撃小宇宙", 0, 10000, 10000, null, true);

//定義：卯水破片前部分
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙破片壱", 1109, Center, Middle, "cg/ef/efc卯水最大攻撃破片01.png");
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙破片弐", 1109, Center, Middle, "cg/ef/efc卯水最大攻撃破片11.png");
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙破片参", 1109, Center, Middle, "cg/ef/efc卯水最大攻撃破片21.png");
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙破片四", 1109, Center, Middle, "cg/ef/efc卯水最大攻撃破片01.png");
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙破片五", 1109, Center, Middle, "cg/ef/efc卯水最大攻撃破片11.png");
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙破片六", 1109, Center, Middle, "cg/ef/efc卯水最大攻撃破片21.png");

//定義：卯水破片後部分
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙破片七", 1108, Center, Middle, "cg/ef/efc卯水最大攻撃破片01.png");
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙破片八", 1108, Center, Middle, "cg/ef/efc卯水最大攻撃破片11.png");
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙破片九", 1108, Center, Middle, "cg/ef/efc卯水最大攻撃破片21.png");
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙破片拾", 1108, Center, Middle, "cg/ef/efc卯水最大攻撃破片01.png");
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙破片拾壱", 1108, Center, Middle, "cg/ef/efc卯水最大攻撃破片11.png");
	CreateTextureEX("絵演蓮卯水最大攻撃小宇宙破片拾弐", 1108, Center, Middle, "cg/ef/efc卯水最大攻撃破片21.png");
	Zoom("絵演蓮卯水最大攻撃小宇宙破片*", 0, 300, 300, null, true);

//暗転中に蓮側の素材定義分割ここまで△△△▲＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

/*
&.卯水最大攻撃4/4
*/
	Fade("@絵shock*", 0, 0, null, true);
	Fade("絵演蓮卯水最大攻撃防御*", 0, 0, null, true);
	Fade("絵演背景卯水白", 0, 0, null, true);

	Fade("絵演蓮卯水最大攻撃卯水全身弐", 0, 1000, null, true);
	Fade("絵演蓮卯水最大攻撃小宇宙", 0, 1000, null, true);
	MoveFFP1("@絵演蓮卯水最大攻撃小宇宙",30000);

	Fade("絵色黒", 1000, 0, null, true);

//全ては卯水の手の中に
	Zoom("絵演蓮卯水最大攻撃卯水全身弐", 3000, 1000, 1000, DxlAuto, false);
	Zoom("絵演蓮卯水最大攻撃小宇宙", 3000, 750, 750, DxlAuto, true);

	Wait(2000);

	$ダメージＲ=2200;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(1000,$現蒼葉ＨＰ);

//蓮を取り込んだ世界が崩壊する
	CreateSE("SE42a","se擬音_精神_割れる01");
	MusicStart("SE42a",0,1000,0,1000,null,false);
	CreateSE("SE42b","se戦闘_ライム_紋章発動準備東江03");
	MusicStart("SE42b",0,500,0,800,null,false);
	Fade("絵演蓮卯水最大攻撃小宇宙", 0, 0, null, true);
	Fade("絵演蓮卯水最大攻撃小宇宙破片*", 0, 1000, null, true);

	$garasuef_hahen00="@絵演蓮卯水最大攻撃小宇宙破片壱";
	$garasuef_hahen01="@絵演蓮卯水最大攻撃小宇宙破片弐";
	$garasuef_hahen02="@絵演蓮卯水最大攻撃小宇宙破片参";
	$garasuef_hahen03="@絵演蓮卯水最大攻撃小宇宙破片四";
	$garasuef_hahen04="@絵演蓮卯水最大攻撃小宇宙破片五";
	$garasuef_hahen05="@絵演蓮卯水最大攻撃小宇宙破片六";
	$garasuef_hahen06="@絵演蓮卯水最大攻撃小宇宙破片七";
	$garasuef_hahen07="@絵演蓮卯水最大攻撃小宇宙破片八";
	$garasuef_hahen08="@絵演蓮卯水最大攻撃小宇宙破片九";
	$garasuef_hahen09="@絵演蓮卯水最大攻撃小宇宙破片拾";
	$garasuef_hahen10="@絵演蓮卯水最大攻撃小宇宙破片拾壱";
	$garasuef_hahen11="@絵演蓮卯水最大攻撃小宇宙破片拾弐";

	Fade($garasuef_hahen00", 0, 1000, null, true);
	Fade($garasuef_hahen01", 0, 1000, null, true);
	Fade($garasuef_hahen02", 0, 1000, null, true);
	Fade($garasuef_hahen03", 0, 1000, null, true);
	Fade($garasuef_hahen04", 0, 1000, null, true);
	Fade($garasuef_hahen05", 0, 1000, null, true);
	Fade($garasuef_hahen06", 0, 1000, null, true);
	Fade($garasuef_hahen07", 0, 1000, null, true);
	Fade($garasuef_hahen08", 0, 1000, null, true);
	Fade($garasuef_hahen09", 0, 1000, null, true);
	Fade($garasuef_hahen10", 0, 1000, null, true);
	Fade($garasuef_hahen11", 0, 1000, null, true);

	$garasu_speed=600;
	$garasu_speed2=1200;

	Fade("garasuef01*", 50, 0, null, false);
	Zoom($garasuef_hahen*, $garasu_speed, 1500, 1500, Dxl1, false);

	Rotate($garasuef_hahen00, $garasu_speed, @0, @0, @50, null,false);
	Move($garasuef_hahen00, $garasu_speed, @-550, @-550, null, false);

	Rotate($garasuef_hahen01, $garasu_speed, @0, @0, @-300, null,false);
	Move($garasuef_hahen01, $garasu_speed, @-600, @0, null, false);

	Rotate($garasuef_hahen02, $garasu_speed, @0, @0, @300, null,false);
	Move($garasuef_hahen02, $garasu_speed, @-550, @550, null, false);

	Rotate($garasuef_hahen03, $garasu_speed, @0, @0, @-280, null,false);
	Move($garasuef_hahen03, $garasu_speed, @100, @550, null, false);

	Rotate($garasuef_hahen04, $garasu_speed, @0, @0, @150, null,false);
	Move($garasuef_hahen04, $garasu_speed, @600, @550, null, false);

	Rotate($garasuef_hahen05, $garasu_speed, @0, @0, @360, null,false);
	Move($garasuef_hahen05, $garasu_speed, @750, @-100, null, false);

	Rotate($garasuef_hahen06, $garasu_speed, @0, @0, @-160, null,false);
	Move($garasuef_hahen06, $garasu_speed, @650, @-550, null, false);

	Rotate($garasuef_hahen07, $garasu_speed, @0, @0, @260, null,false);
	Move($garasuef_hahen07, $garasu_speed, @-60, @-550, null, false);

	Zoom($garasuef_hahen08, $garasu_speed2, 3500, 3500, null, false);
	Rotate($garasuef_hahen08, $garasu_speed2, @760, @720, @90, null,false);
	Move($garasuef_hahen08, $garasu_speed2, @-450, @250, null, false);

	Zoom($garasuef_hahen09, $garasu_speed2, 1000, 1000, null, false);
	Rotate($garasuef_hahen09, $garasu_speed2, @-760, @720, @-80, null,false);
	Move($garasuef_hahen09, $garasu_speed2, @250, @150, null, false);

	Zoom($garasuef_hahen10, $garasu_speed2, 8500, 8500, null, false);
	Rotate($garasuef_hahen10, $garasu_speed2, @360, @100, @50, null,false);
	Move($garasuef_hahen10, $garasu_speed2, @-250, @-250, null, false);

	Zoom($garasuef_hahen11, $garasu_speed2, 4500, 4500, null, false);
	Rotate($garasuef_hahen11, $garasu_speed2, @240, @-720, @100, null,false);
	Move($garasuef_hahen11, $garasu_speed2, @250, @-150, null, false);

	Fade($garasuef_hahen08, $garasu_speed2, 0, Axl3, false);
	Fade($garasuef_hahen09, $garasu_speed2, 0, Axl3, false);
	Fade($garasuef_hahen10, $garasu_speed2, 0, Axl3, false);
	Fade($garasuef_hahen11, $garasu_speed2, 0, Axl3, false);

	Wait(2000);

	RMDControlOutR(1000);

	CreateColorEXadd("絵色白", 10000, "FFFFFF");
	Fade("絵色白", 600, 1000, AxlAuto, true);

	PrintGO("上背景", 10010);
	CreateColorSPadd("絵色白", 10000, "FFFFFF");

	CreateTextureSP("絵背景", 10, Center, Middle, "cg/bg/bg201051_0_ライム東江.jpg");
	CreatePlainSP("絵板写", 5000);
	Zoom("絵板写", 0, 3000, 3000, null, true);
	Rotate("絵板写", 0, @0, @0, 540, null,true);
	SetShade("絵板写", HEAVY);
	SetBlur("絵板写", true, 3, 200, 100, false);
	FadeDelete("上背景", 0, null, true);
	FadeDelete("絵色白", 600, null, true);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE01b","se人体_足音_一歩02");
	MusicStart("SE01b",0,700,0,1000,null,false);
	Rotate("絵板写", 200, @0, @0, 0, Dxl3,false);
	Zoom("絵板写", 300, 1000, 1000, Dxl3, false);
	Shake("絵板写", 600, 0, 20, 0, 0, 1000, Dxl3, true);
	FadeDelete("絵板写", 500, null, true);

/*
	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000340a01">
"&.&.&.!"

{	Fw("fwAM蓮_通常_normal");}//人型裸
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000350a06">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

//※蓮にシールド張らせて防御する。が、小さな回転刃が
//　ギュリギュリとシールドを削る。蓮がかなり苦しそう。
//　そのうちの１つがシールドを突破し、蓮の腕に食いこむ。
//　蓮ダメージ。結構デカい。蓮が片手を地面につく。


	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000360a01">
"Ren!"

{	Fw("fw蓮_通常マントなし_pain");}//人型裸
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000370a06">
"-! I'm still fine&.&.&."

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000380b02">
"Aoba-kun&. You should've realized it by now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000390b02">
"You should've known that the moment you thought you were
 going to win&, you had already lost&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000400a01">
"&.&.&.Kuh-!"

{	DeleteFw();}
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000410b02">
"What do you think happens to people the moment when they
 put their intentions high on a pedestal&, thinking of
 themselves noble?" 

//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000420b02">
"Nothing&. Only when people lock their desires and emotions
 away can they achieve true bliss&."

//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000430b02">
"If there is desire&, there is battle&. When that is erased&,
 people will be able to achieve equality&, tranquility&, and
 pure bliss&. You think my ideas are wrong&, don't you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_hard");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000440a01">
"&.&.&.!"

{	St("C",740, @0,@0,"st東江_通常_smile");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000450b02">
"Do you think that a world that's run by greed&, where life
 is pointlessly taken away is right?"

{	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000460a01">
"&.&.&.No&, I&.&.&.!"

{	DeleteFw();}
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000470b02">
"You hold the power of destruction&. A direct link to death&.
 What you've been using to kill off Sei's consciousnesses
 that we've spent so long on&, hm?" 

{	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000480a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
&.&.&.No&.

It's true that my power is only good for destruction&.

But it's not like that&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000490a01">
"Death and destruction aren't always the same thing&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000500a01">
"It's a release from something&. To end something to begin
 anew&. That's why there's death!"

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000510b02">
"&.&.&.I see&."

{	St("C",740, @0,@0,"st東江_通常_serious");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000520b02">
"If you think so&, then try to overcome it&. Show me how
 you'll stop my 'life' with your 'death'&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000530b02">
"Then maybe you'll be able to release me as well? Fufu&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※東江、「無」をセット。
//　卯水の周りに梵字の玉がいくつか浮かび上がる。

	CreateColorEX("絵黒幕", 10000, "000000");
	Fade("絵黒幕", 400, 1000, null, true);

	DeleteAllSt(0,true);

//卯水最大攻撃素材定義分割(1/4)＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	CreateColorSP("絵黒仮下", 55, "000000");
	Fade("絵黒幕", 0, 0, null, true);

//定義：卯水引きの時の背景
	CreateColorEX("絵色", 50, "#000000");
	CreateTextureEXadd("絵背景", 50, Center, Middle, "cg/ef/efbg効果01.jpg");

	Fade("絵色", 0, 1000, null, true);
	Fade("絵背景", 0, 1000, null, true);

//定義：卯水カットイン
	CreateTextureEX("絵演卯水最大攻撃一", 1100, Center, Middle, "cg/ev/x/ev010卯水a_x01.jpg");
	CreateTextureEX("絵演卯水最大攻撃二", 1100, Center, Middle, "cg/ev/x/ev010卯水a_x02.jpg");
	CreateTextureEX("絵演卯水最大攻撃三", 1100, Center, Middle, "cg/ev/x/ev010卯水a_x03.jpg");
	CreateTextureEX("絵演卯水最大攻撃四", 1100, Center, Middle, "cg/ev/x/ev010卯水a_x04.jpg");
	CreateTextureEX("絵演卯水最大攻撃五", 1100, Center, Middle, "cg/ev/x/ev010卯水a_x05.jpg");
	CreateTextureEX("絵演卯水最大攻撃六", 1100, Center, Middle, "cg/ev/x/ev010卯水a_x06.jpg");
	Move("絵演卯水最大攻撃六", 0, @0, @-40, null, true);

//定義：卯水縮小用
	CreateTextureEX("絵演卯水最大攻撃全身", 1090, Center, -252, "cg/ev/x/ev010卯水a.png");

//定義：卯水曼荼羅
	CreateTextureEXover("絵演卯水最大攻撃曼荼羅前", 1190, Center, Middle, "cg/ef/efv卯水_曼荼羅刃.png");
	Zoom("絵演卯水最大攻撃曼荼羅前", 0, 500, 500, null, true);

	CreateTextureEXadd("絵演卯水最大攻撃曼荼羅後", 1190, Center, Middle, "cg/ef/efv卯水_曼荼羅刃.png");
	Zoom("絵演卯水最大攻撃曼荼羅後", 0, 980, 980, null, true);
	SetBlur("絵演卯水最大攻撃曼荼羅後", true, 3, 500, 100, false);


//定義：卯水攻撃の波動
	CreateMaskEX("絵覆", 0, 0, 0, "cg/data/zzex_circle_01_01_1.png", false);
	CreateTextureEX("絵覆/絵演卯水最大攻撃曼荼羅覇気", 1200, Center, Middle, "cg/ef/efクリアの歌声_l.jpg");
	Zoom("絵覆/絵演卯水最大攻撃曼荼羅覇気", 0, 1000, 1067, null, true);

	CreateColorEXadd("絵色白", 2000, "#FFFFFF");

	CreateTxtinEffectS(2000,"東江","無");

//ここまで素材定義▲△△△＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

/*
&.卯水最大攻撃1/4
*/

//卯水カットイン
	CreateSE("SE21a","se擬音_効果_力東江01");
	CreateSE("SE21b","se擬音_効果_力東江01");
	CreateSE("SE21c","se擬音_効果_力東江01");
	CreateSE("SE21d","se擬音_効果_力東江01");
	CreateSE("SE21e","se擬音_効果_力東江01");

	$EF01Ftime=450;
	$EF01Wtime=50;
	$EF01Mtime=$EF01Ftime+$EF01Wtime*6;
	MusicStart("SE21a",0,700,0,500,null,false);
	Move("絵演卯水最大攻撃一", $EF01Mtime, @-40, @-40, DxlAuto, false);
	Fade("絵演卯水最大攻撃一", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("絵演卯水最大攻撃一", $EF01Ftime, 250, null, true);

	MusicStart("SE21b",0,700,0,500,null,false);
	Fade("絵演卯水最大攻撃一", 0, 0, null, true);
	Move("絵演卯水最大攻撃二", $EF01Mtime, @40, @0, DxlAuto, false);
	Fade("絵演卯水最大攻撃二", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("絵演卯水最大攻撃二", $EF01Ftime, 250, null, true);

	MusicStart("SE21c",0,700,0,500,null,false);
	Fade("絵演卯水最大攻撃二", 0, 0, null, true);
	Move("絵演卯水最大攻撃三", $EF01Mtime, @-40, @40, DxlAuto, false);
	Fade("絵演卯水最大攻撃三", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("絵演卯水最大攻撃三", $EF01Ftime, 250, null, true);

	MusicStart("SE21d",0,700,0,500,null,false);
	Fade("絵演卯水最大攻撃三", 0, 0, null, true);
	Move("絵演卯水最大攻撃四", $EF01Mtime, @0, @40, DxlAuto, false);
	Fade("絵演卯水最大攻撃四", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("絵演卯水最大攻撃四", $EF01Ftime, 250, null, true);

	MusicStart("SE21e",0,700,0,500,null,false);
	Fade("絵演卯水最大攻撃四", 0, 0, null, true);
	Move("絵演卯水最大攻撃五", $EF01Mtime, @0, @-40, DxlAuto, false);
	Fade("絵演卯水最大攻撃五", 0, 1000, null, true);
	Wait($EF01Wtime);
	Fade("絵演卯水最大攻撃五", $EF01Ftime, 250, null, true);

	Fade("絵演卯水最大攻撃五", 0, 0, null, true);
	Move("絵演卯水最大攻撃六", $EF01Mtime, @0, @40, DxlAuto, false);
	Fade("絵演卯水最大攻撃六", 0, 1000, null, true);

	Wait(1000);

//文字エフェクト表示
	EffectTxtinS(700,"東江","無");
	Wait(1000);

//卯水全身表示
	CreateSE("SE21f","se戦闘_動作_跳躍低01");
	MusicStart("SE21f",0,700,0,800,null,false);
	$EF02Ztime=350;
	Fade("絵演卯水最大攻撃全身", 0, 1000, null, true);
	Zoom("絵演卯水最大攻撃全身", 0, 6000, 6000, null, true);

	Zoom("絵演卯水最大攻撃六", $EF02Ztime, 25, 25, Dxl3, false);
	Fade("絵演卯水最大攻撃六", $EF02Ztime, 0, null, false);
	Move("絵演卯水最大攻撃全身", $EF02Ztime, @0, -476, Dxl3, false);
	Fade("絵演卯水最大攻撃全身", $EF02Ztime, 1000, null, false);
	Zoom("絵演卯水最大攻撃全身", $EF02Ztime, 100, 100, Dxl3, false);
	Fade("絵黒仮下", $EF02Ztime, 0, Dxl3, true);

	Wait(150);

//卯水曼荼羅を展開
	CreateSE("SE22a","se擬音_効果_力東江02");
	MusicStart("SE22a",0,700,0,1500,null,false);
	CreateSE("SE22b","se戦闘_ライム_紋章発動準備東江汎用01");
	SoundEffect("SE22b","SEWERPIPE");
	MusicStart("SE22b",0,700,0,500,null,false);
	Fade("絵演卯水最大攻撃曼荼羅前", 0, 1000, null, true);
	Fade("絵演卯水最大攻撃曼荼羅前", 200, 500, null, false);
	Zoom("絵演卯水最大攻撃曼荼羅前", 200, 700, 700, DxlAuto, true);

	Wait(100);

	Fade("絵演卯水最大攻撃曼荼羅後", 0, 750, null, true);
	Fade("絵演卯水最大攻撃曼荼羅後", 300, 500, null, false);
	Zoom("絵演卯水最大攻撃曼荼羅後", 300, 700, 700, Dxl3, true);

//卯水覇気が上がる
	CreateSE("SE23a","se戦闘_ライム_紋章発動01");
	MusicStart("SE23a",0,700,0,1500,null,false);
	CreateSE("SE23b","se擬音_効果_力東江02");
	MusicStart("SE23b",0,700,0,800,null,false);
	Rotate("絵覆/絵演卯水最大攻撃曼荼羅覇気", 50000, @0, @0, 1080, null,false);
	Fade("絵覆/絵演卯水最大攻撃曼荼羅覇気", 500, 500, null, false);
	DrawTransition("絵覆/絵演卯水最大攻撃曼荼羅覇気", 6000, 0, 350, 500, null, "cg/data/spiral_01_00_1.png", false);
	Zoom("絵覆", 3000, 10000, 10000, null, false);

	Wait(2000);

	CreateColorSP("絵黒幕", 10000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CreateTextureSP("絵背景", 1100, -750, -660, "cg/ev/l/ev900ライム対戦蒼葉VS東江2_l.jpg");
	Delete("絵演卯水*");
	Delete("絵覆");
	Wait(150);
	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000540a01">
"Shit! If that happens again Ren won't make it&.&.&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000550a06">
"I'm fine&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000560a01">
"No! What if&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	$NoTextBoxDelete=true;
	PrintGO("上背景", 11000);
	CreateTextureSP("絵背景", 10, Center, Middle, "cg/bg/bg201051_0_ライム東江.jpg");

{	St("C",740, @0,@0,"bu蓮_通常マントなし_normal");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000570a06">
"&.&.&.Aoba&. It might sound weird for me to say this to
 you&.&.&."

{
	SetVolumeEX("@dm*", 1600, 0, null);
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000580a06">
"But if Usui has Sei's consciousness within it&, you may
 just be able to reach him and call him out&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000590a01">
"What do you mean?"

{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000600a06">
"This is a Rhyme Field&. It's closer to communicate mind to
 mind rather than through the flesh&. Like how you did to
 me&, you can call out to Sei&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FwPro("fw蒼葉_通常_worry4",800,"fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0164]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000610a01">
"&.&.&.I see&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlayEF("@dm016",0,450,true);//決意

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000620a01">
"I got it&. I'll try&."

{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000630a06">
"And during it&, I'll protect you&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000640a01">
"Sorry&."

{	St("C",740, @0,@0,"bu蓮_通常マントなし_smile");
	FadeSt("C",200,true);}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000650a06">
"It's my duty&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵黒幕", 10000, "000000");
	Fade("絵黒幕", 400, 1000, null, true);

	DeleteAllSt(0,true);

//卯水最大攻撃素材定義分割(1/4)＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	CreateColorSP("絵黒仮下", 55, "000000");

//定義：卯水引きの時の背景
	CreateColorEX("絵色", 50, "#000000");
	CreateTextureEXadd("絵背景", 50, Center, Middle, "cg/ef/efbg効果01.jpg");

	Fade("絵色", 0, 1000, null, true);
	Fade("絵背景", 0, 1000, null, true);

//定義：卯水縮小用
	CreateTextureEX("絵演卯水最大攻撃全身", 1090, Center, -252, "cg/ev/x/ev010卯水a.png");

//定義：卯水曼荼羅
	CreateTextureEXover("絵演卯水最大攻撃曼荼羅前", 1190, Center, Middle, "cg/ef/efv卯水_曼荼羅刃.png");
	Zoom("絵演卯水最大攻撃曼荼羅前", 0, 500, 500, null, true);

	CreateTextureEXadd("絵演卯水最大攻撃曼荼羅後", 1190, Center, Middle, "cg/ef/efv卯水_曼荼羅刃.png");
	Zoom("絵演卯水最大攻撃曼荼羅後", 0, 980, 980, null, true);
	SetBlur("絵演卯水最大攻撃曼荼羅後", true, 3, 500, 100, false);


//定義：卯水攻撃の波動
	CreateMaskEX("絵覆", 0, 0, 0, "cg/data/zzex_circle_01_01_1.png", false);
	CreateTextureEX("絵覆/絵演卯水最大攻撃曼荼羅覇気", 1200, Center, Middle, "cg/ef/efクリアの歌声_l.jpg");
	Zoom("絵覆/絵演卯水最大攻撃曼荼羅覇気", 0, 1000, 1067, null, true);

	CreateColorEXadd("絵色白", 4000, "#FFFFFF");

//ここまで素材定義▲△△△＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

//卯水全身表示
	$EF02Ztime=0;
	Fade("絵演卯水最大攻撃全身", 0, 1000, null, true);
	Zoom("絵演卯水最大攻撃全身", 0, 6000, 6000, null, true);

	Zoom("絵演卯水最大攻撃六", $EF02Ztime, 25, 25, Dxl3, false);
	Fade("絵演卯水最大攻撃六", $EF02Ztime, 0, null, false);
	Move("絵演卯水最大攻撃全身", $EF02Ztime, @0, -476, Dxl3, false);
	Fade("絵演卯水最大攻撃全身", $EF02Ztime, 1000, null, false);
	Zoom("絵演卯水最大攻撃全身", $EF02Ztime, 100, 100, Dxl3, false);
	Fade("絵黒仮下", $EF02Ztime, 0, Dxl3, true);

	Wait(1);

//卯水曼荼羅を展開
	Fade("絵演卯水最大攻撃曼荼羅前", 0, 1000, null, true);
	Fade("絵演卯水最大攻撃曼荼羅前", 0, 500, null, false);
	Zoom("絵演卯水最大攻撃曼荼羅前", 0, 700, 700, DxlAuto, true);

	Fade("絵演卯水最大攻撃曼荼羅後", 0, 750, null, true);
	Fade("絵演卯水最大攻撃曼荼羅後", 0, 500, null, false);
	Zoom("絵演卯水最大攻撃曼荼羅後", 0, 700, 700, Dxl3, true);

//卯水覇気が上がる
	CreateSE("SE23a","se戦闘_ライム_紋章発動01");
	MusicStart("SE23a",0,700,0,1500,null,false);
	CreateSE("SE23b","se擬音_効果_力東江02");
	MusicStart("SE23b",0,700,0,800,null,false);

	Rotate("絵覆/絵演卯水最大攻撃曼荼羅覇気", 50000, @0, @0, 1080, null,false);
	Fade("絵覆/絵演卯水最大攻撃曼荼羅覇気", 0, 500, null, false);
	DrawTransition("絵覆/絵演卯水最大攻撃曼荼羅覇気", 0, 0, 350, 500, null, "cg/data/spiral_01_00_1.png", false);
	Zoom("絵覆", 0, 10000, 10000, null, false);

	Fade("絵黒幕", 200, 0, null, true);

	Wait(1000);

//卯水攻撃発射
	CreateSE("SE01","se戦闘_衝撃_幻影02");
	MusicStart("SE01",0,700,0,800,null,false);
	Fade("絵色白", 0, 1000, null, true);
	DrawTransition("絵色白", 250, 0, 1000, 100, Axl1, "cg/data/circle_03_00_0.png", false);

	Wait(1000);

	Delete("絵背景");
	Delete("絵演卯水*");
	Delete("絵覆");

//蓮防御に移行＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

	CreateTextureEX("絵専下", 3110, -210, -120, "cg/ev/ev950蓮バトル汎用防御_効果.jpg");

	CreateTextureEX("絵専背景効果", 3120, -2000, -440, "cg/ev/l/ev950蓮バトル汎用防御_効果_l.jpg");
	SetVertex("絵専背景効果", 1453, 830);
	Zoom("絵専背景効果", 0, 1100, 1110, null, true);

	CreateTextureEX("絵専背景", 3110, -2000, -440, "cg/ev/l/ev950蓮バトル汎用防御_l.jpg");
	Zoom("絵専背景", 0, 1500, 1500, null, true);

	CreateMovieSP("絵演動画", 3120, Center, Middle, true, true, "dx/mv0003集中線04_黒&.ngs");
	Zoom("絵演動画", 0, 3000, 3000, null, true);

	FadeDelete("絵演動画", 800, null, false);
	FadeDelete("絵色白", 600, null, false);

	CreateVOICE("蓮","dm55/9000660a06");//「……ッッ」
	$SETime2 = RemainTime("蓮")-100;

	CreateSE("SE51","se戦闘_動作_跳躍低01");
	MusicStart("SE51",0,700,0,800,null,false);

	Position("@絵専背景", $x1, $y1);
	Zoom("絵専背景", 800, 1000, 1000, Dxl3, false);
	BezierMove("絵専背景", 800, ($x1,$y1){-1920,-380}{-1650,-370}(-1170,-490), Dxl3, false);
	Fade("絵専背景", 600, 1000, null, false);

	Wait(600);

	$ダメージＲ=0;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	CreateSE("SE01","se戦闘_衝撃_防壁発動01");
	MusicStart("SE01",0,700,0,1100,null,false);
	CreateColorSPadd("絵色白", 4900, "FFFFFF");
	FadeDelete("絵色白", 1000, null, false);

	Fade("絵専下", 0, 1000, null, true);

	Position("@絵専背景", $x1, $y1);
	Move("絵専背景効果", 0, $x1, $y1, null, true);
	Fade("絵専背景効果", 0, 1000, null, true);
	SetBlur("絵専背景効果", true, 3, 500, 250, false);
	Wait(100);
	Zoom("絵専背景効果", 1000, 1000, 1000, null, false);
	Fade("絵専背景効果", 800, 0, null, false);
	Wait(500);
	Fade("絵専背景", 800, 0, null, true);

//ヒットエフェクト準備
	CreateSE("SE11","se戦闘_打撃_ヒット低04");
	CreateSE("SE12","se戦闘_打撃_ヒット低04");
	CreateSE("SE13","se戦闘_打撃_ヒット低04");
	CreateSE("SE14","se戦闘_打撃_ヒット低04");
	CreateSEEX("SE15","se戦闘_衝撃_エネルギー鬩ぎ合い01L");
	CreateSE("SE16","se戦闘_打撃_ヒット低04");
	CreateSE("SE17","se戦闘_打撃_ヒット低04");
	CreateSE("SE18","se戦闘_打撃_ヒット低04");

	CreateTextureEXadd("絵演効果火花", 4900, Center, Middle, "cg/ef/efx02火花電光01.jpg");
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);

	CreateMaskEX("覆", 0, 0, 0, "cg/data/circle_03_00_1.png", false);
	Zoom("覆", 0, 2000, 2000, null, true);

	CreateColorEXadd("絵白転", 5000, "FFFFFF");
	CreateColorEXadd("覆/絵色白", 4890, "FFFFFF");

	Position("絵専下", $x1, $y1);//原点を取得
	SetVolumeEX("蓮", 150, 0, null);

//ランダムヒットエフェクト01＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	MusicStart("蓮",0,1600,0,1000,null,false);

	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	MusicStart("SE15",0,500,0,1000,null,true);
	MusicStart("SE11",0,1000,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=200;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Wait(300);

	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト02＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE12",0,1000,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=200;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト03＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE13",0,1000,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=200;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);


	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト04＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE14",0,1000,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=200;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Wait(100);

	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト05＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE16",0,1000,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=200;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Wait(100);

	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す

//ランダムヒットエフェクト05＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
	Zoom("絵演効果火花", 0, 2000, 2000, null, true);
	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("絵演効果火花", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);
	Fade("絵演効果火花", 0, 300, null, true);
	Fade("絵演効果火花", 200, 0, null, false);
	Zoom("絵演効果火花", 200, 3000, 3000, null, false);

	$RandomGuardPoiX=-512+Random(1024);
	$RandomGuardPoiY=-288+Random(576);
	Move("覆", 0, $RandomGuardPoiX, $RandomGuardPoiY, null, true);

	MusicStart("SE17",0,1000,0,1000,null,false);
	Fade("覆/絵色白", 0, 1000, null, true);

	$ダメージＲ=200;
	$現蒼葉ＨＰ=$現蒼葉ＨＰ-$ダメージＲ;
	RMDControlInR(10,$現蒼葉ＨＰ);

	Wait(30);

	FadeFFR3("絵専下", 0,1000, 100, 0, 0, 30,null, false);
	Fade("覆/絵色白", 100, 0, null, true);

	Wait(100);

	Move("絵専下", 0, $x1, $y1, null, true);//元の位置に戻す

	MusicStart("SE18",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白２", 8000, "FFFFFF");
	Wait(100);

	PrintGO("上背景", 10000);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	CreateTextureSP("絵背景", 10, Center, Middle, "cg/bg/bg201051_0_ライム東江.jpg");
	Delete("上背景");
	Wait(30);

	RMDControlOutR(0);
	FadeDelete("絵色白", 500, null, true);

	CreateColorEX("絵色黒", 5000, "000000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0174]
I collect my concentration&.&.&.<k>
{
	SetVolumeEX("SE*", 3000, 0, null);
	Fade("絵色黒", 2000, 1000, null, false);
}
I call out to Sei in my mind&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

//※卯水の周りに浮かび上がった梵字の玉がそれぞれ小さな曼荼羅型の刃に変化する。
//　それが勢いをつけて回転、蒼葉の方へ向かってくる。
//　蓮がシールドで防御。さっき引き裂かれているため、かなりつらそう。

//あきゅん「※：上に移動しました」
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000660a06">
"&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	PrintGO("上背景", 10000);
	CreateColorSP("絵色黒", 2000, "000000");
	Delete("上背景");

	CreateSEEF("SE01","se人体_心臓_鼓動01L");
	MusicStartEF("SE01",10000,800,0,800,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0176]
&.&.&.Sei&. <k><?>
Answer me&.

To my call&.&.&.

Answer me&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureSPadd("絵演手動頭痛", 3000, Center, Middle, "cg/ef/ef蒼葉黒強頭痛d_黒.jpg");
	Zoom("絵演手動頭痛", 0, 1100, 1100, null, true);
	SetBlur("絵演手動頭痛", true, 3, 500, 30, false);

//※頭痛レベル：５
//※ずきん、と頭痛
$HALevel=5;
	//HAFade(2010, 0,false);

	CreateSE("SE02","se人体_頭痛_痛む01");
	MusicStart("SE02",0,1100,0,1000,null,false);
	DrawTransition("絵演手動頭痛", 80, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);
	FadeFFR2("絵演手動頭痛", 0,1000, 200, 0, 0, 50,null, false);
	Wait(100);
	Fade("絵演手動頭痛", 200, 0, null, true);
	Delete("絵演手動頭痛");

//※白蒼葉の幻影が重なる

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000670a01">
"Answer me&, please&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000680a01">
"Answer me&.&.&. please!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000690a01">
"&.&.&.I'm counting on you&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Request("@SE01", UnLock);
	SetVolumeEF("@SE01",300);
	SetVolumeEF("@dm016",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0193]
//※力発動
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000700a01">
"Answer me&, brother!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

/*
	CreateTextureEX("絵演卯水", 2110, Center, -1450, "cg/ev/l/ev010卯水a_l.jpg");
	Fade("絵演卯水", 2000, 1000, null, true);
	CreateTextureEX("絵演卯水寄", 2120, Center, Middle, "cg/ev/x/ev010卯水a_x06.jpg");
*/
	CreateColorSP("絵色黒", 5000, "000000");

	//$SYSTEM_effect_lens_curvature = 8000;
	//$SYSTEM_effect_lens_distance = 10;
	//CreateEffect("絵鏡", 2200, -135, -415, 1550, 1550, "Lens");
	//SetAlias("絵鏡","絵鏡");

	CreateTextureSP("絵卯水視線", 2110, Center, Middle, "cg/bg/bg201051_0_ライム東江.jpg");
	SetShade("絵卯水視線", SEMIHEAVY);
	CreateTextureSP("絵卯水視線立絵", 2120, Center, InBottom, "cg/fu/fu蒼葉_通常_serious.png");
	Move("絵卯水視線立絵", 0, @0, @60, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0194]
Usui's eyes&.&.&.

are looking <?>
{
	DrawTransition("絵色黒", 2000, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Wait(500);
}
at me-

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※卯水の様子がおかしくなり、ガクンと動きを止める。
//　その様子を黙って見ている東江。

	PrintGO("上背景", 10000);
	CreateColorSPadd("絵色白", 10000, "FFFFFF");
	FadeDelete("上背景", 0, null, true);
	Wait(30);

	CreateSoundAkk("卯水","voice/dm55/9000720c06");
	MusicStart("卯水",0,1500,0,1000,null,false);

	CreateTextureSP("絵背景", 10, Center, Middle, "cg/bg/bg201052_0_ライム東江.jpg");

	FadeDelete("絵色白", 1000, null, true);

	Wait(800);

	Fw("fw東江_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【東江】
<voice name="東江" class="東江" src="voice/dm55/9000710b02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【卯水】
<voice name="卯水" class="卯水" src="voice/dm55/9000720c06">
"U-Ughhhh&.&.&. Ahhhhhhhhh&, AHHHHHHH&.&.&.&.&.|


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0202]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000730a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("卯水", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0203]
//【卯水】
<voice name="卯水" class="卯水" src="voice/dm55/9000740c06">
"AHHHHHHHHHHHHHHHHHHHH&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵専", 1110, Center, -265, "cg/ev/x/ev010卯水a_x07.jpg");
	Fade("絵専", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0204]
//【卯水】
<voice name="卯水" class="卯水" src="voice/dm55/9000750c06">
"A"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【卯水】
<voice name="卯水" class="卯水" src="voice/dm55/9000760c06">
"o"

//【卯水】
<voice name="卯水" class="卯水" src="voice/dm55/9000770c06">
"ba"

//【卯水】
<voice name="卯水" class="卯水" src="voice/dm55/9000780c06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	CreateTextureEXover("絵演生面影", 1110, Center, Middle, "cg/ev/x/ev010卯水a_x07b.png");
	Fade("絵演生面影", 0, 1000, null, true);
	Wait(30);
	Fade("絵色黒", 600, 1000, Axl3, false);
	DrawTransition("絵演生面影", 300, 1000, 0, 10, null, "cg/data/noize_01_00_0.png", false);
	Fade("絵演生面影", 100, 0, null, true);

	WaitAction("@絵色黒", null);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0213]
//【卯水】
<voice name="卯水" class="卯水" src="voice/dm55/9000790c06">
"Destr- oy- m-e&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	CreateTextureEX("絵演最後願", 5100, Center, Middle, "cg/ef/tx卯水の願い.jpg");
	Fade("絵演最後願", 0, 1000, null, true);
	DrawTransition("絵演最後願", 14000, 100, 900, 10, null, "cg/data/slide_01_00_0.png", true);

	CreatePlainEX("絵板写", 6000);
	SetShade("絵板写", HEAVY);
	Fade("絵板写", 2000, 1000, null, true);
	Wait(1000);
	Delete("絵演最後願");
	FadeDelete("絵板写", 2000, null, true);

	Wait(500);

//あきゅん「※：何か切ない系の曲流そうかと思ったそんなもの無かったぜ」
	SetStream("@dm012*", 15360);
	SoundPlay("@dm012",6000,450,true);
	$dm5590_vs_music=true;

	PrintGO("上背景", 10000);

	CreateTextureSP("絵背景", 10, Center, Middle, "cg/bg/bg201051_0_ライム東江.jpg");

	FadeDelete("上背景", 2000, null, true);

	Wait(500);

//あきゅん「※：顔は出さない方が良いかな……」

/*
//あきゅん「※：このセリフいらいない、かな……」
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0214]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000800a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000810a01">
"It's fine now&.&.&. I'll destroy it&. I'll release you with my power&, brother&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※卯水の動きが完全に止まる。蓮へ向けられていた攻撃もぴたっとやむ。

{	Fw("fw蓮_通常マントなし_worry");}//人型裸
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/9000820a06">
"&.&.&.Usui's attacks have stopped&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

//あきゅん「※：なんか蒼葉がこういう事言うのは違う気がする」
/*
{	Fw("fw蒼葉_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0222]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/9000830a01">
"Now&, Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/
	TextBoxDelete(0);

//※「誉」セット。蓮の両腕からぐぐっと刃が出てくる。
//　卯水に突撃する蓮。卯水は停止しているため、シールドも張れずに無防備状態。蓮が撃破。
//　蒼葉たちの勝利。

	CreateColorEX("絵色黒", 2000, "000000");
	Fade("絵色黒", 400, 1000, null, true);

	CreateTextureEX("絵演剣閃", 2100, Center, Middle, "cg/ef/efx01剣閃01.jpg");
	CreateTextureEXadd("絵演剣閃光", 2100, Center, Middle, "cg/ef/efx01剣閃01.jpg");
	Rotate("絵演剣閃*", 0, @0, @180, @0, null,true);
	Move("絵演剣閃*", 0, @-100, @0, null, true);
	Zoom("絵演剣閃*", 0, 1500, 1500, null, true);

	CreateSE("SE91","se戦闘_蓮_剣撃01");
	MusicStart("SE91",0,700,0,1000,null,false);
	Fade("絵演剣閃*", 0, 1000, null, true);
	DrawTransition("絵演剣閃*", 100, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Fade("絵演剣閃光", 300, 0, null, true);

	Wait(200);

	CreateTextureSP("絵演卯水撃破背景", 1000, Center, Middle, "cg/ev/ev559蓮、卯水亜種を撃破_背景.jpg");
	CreateTextureSP("絵演卯水撃破蓮", 1210, -30, -60, "cg/ev/ev559蓮、卯水亜種を撃破_人物蓮.png");

//あきゅん「※：卯水の消滅が目立たなくなるので表示しない」
/*
	CreateTextureSPadd("絵演卯水撃破蓮刃雷", 1215, 65, -36, "cg/ev/ev559蓮、卯水亜種を撃破_効果紫電刃.png");
	CreateTextureSPadd("絵演卯水撃破蓮手雷", 1215, -10, 90, "cg/ev/ev559蓮、卯水亜種を撃破_効果紫電体.png");

	CreateProcessEX("プロセス手雷", "Proc_dm5590_vs_06Act");
	Request("プロセス手雷", Start);

	CreateProcessEX("プロセス刃雷光", "Proc_dm5590_vs_07aAct");
	CreateProcessEX("プロセス刃雷流", "Proc_dm5590_vs_07bAct");
	Request("プロセス刃雷光", Start);
	Request("プロセス刃雷流", Start);
*/

	CreateTextureSP("絵演卯水撃破卯水", 1110, 770, 160, "cg/ev/ev559蓮、卯水亜種を撃破_人物卯水.png");
	Position("@絵演卯水撃破卯水", $x1, $y1);
	CreateStencil("絵覆",0,$x1, $y1,128,"cg/ev/ev559蓮、卯水亜種を撃破_人物卯水.png",false);
	SetAlias("絵覆","絵覆");
	CreateColorEXadd("絵覆/絵演卯水撃破卯水光", 5000, "FFFFFF");


	FadeDelete("絵色黒", 1000, null, false);
	FadeDelete("絵演剣閃*", 1000, null, true);

	Wait(2000);

	Fade("絵覆/絵演卯水撃破卯水光", 2000, 1000, null, true);
	Delete("絵演卯水撃破卯水");

	Wait(2000);

	CreateSE("SE99","se擬音_効果_力白蒼葉消滅02");
	MusicStart("SE99",0,1800,0,1200,null,false);
	Fade("絵覆/絵演卯水撃破卯水光", 16000, 0, null, false);
	DrawTransition("絵覆/絵演卯水撃破卯水光", 9000, 800, 0, 10, null, "cg/data/slide_02_01_1.png", false);

	Wait(2000);

	CreateColorEXadd("絵色白", 9900, "FFFFFF");
	Fade("絵色白", 2000, 1000, Axl3, true);

//あきゅん「※：断末魔微妙！」
	//CreateVOICE("卯水","dm55/9000840c06");
	//MusicStart("卯水",0,1500,0,1000,null,false);

	Wait(2000);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【卯水】
<voice name="卯水" class="卯水" src="voice/dm55/9000840c06">
"AHHHHHHHHHHHHHHHHHHHHHH!!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

//※画面が白く発光し、世界を全て飲み込む。
//　遠くでパリーンと割れる音。（卯水が割れてる音）

//※現実世界に戻る

	ClearFadeAll(3000, true);
	$dm5590_vs_musicB=true;

//※次ファイル["dm5600.nss"]

}
