//<continuation number="120">
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


scene dm1150.nss_MAIN
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
	//#ev900もう１人の蒼葉=true;

	#bg303024_5_娯楽施設クラブフロア=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1160.nss";

	//▼頭痛レベル設定
	$HALevel=2;

}


scene dm1150.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg303021_5_娯楽施設クラブフロア");
	FadeBG(0,true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/l/bg303021_5_娯楽施設クラブフロア_l.jpg");

//ライト準備===========================================================
	CreateColorEXadd("絵色ライト1", 1109, "883355");
	CreateColorEXadd("絵色ライト2", 1109, "448800");
	CreateColorEXadd("絵色ライト3", 1109, "005588");
	DrawTransition("絵色ライト1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトナット透明度 = 500;
	$ライトタイム = 500;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoopLive2");
	SetAlias("プロセスライト１","プロセスライト１");

	CreateTextureSP("プロセス洗脳絵背景", 100, Center, Middle, "cg/bg/bg303021_5_娯楽施設クラブフロア.jpg");

	CreateLoopFade("プロセス洗脳光",200,true,AddRender,cg/bg/bg303024_5_娯楽施設クラブフロア.jpg,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg);
	CreateLoopFade2("プロセス洗脳レーザー",150,true,false,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg);

	CreateSurface("絵Suf",300,0,0,false);
	SetAlias("絵Suf", "絵Suf");
	SetSurface("プロセス洗脳*","絵Suf");
	Zoom("絵Suf", 0, 1500, 1500, null, true);
	Request("絵Suf", Smoothing);

	Move("絵Suf", 0, 100, @0, null, true);


	GoLoopFade("@プロセス洗脳光",100);
	GoLoopFade2("@プロセス洗脳レーザー",137);
	Request("@プロセスライト１", Start);

	Lens_Set("レンズ１",5000,-300,-300,1500,1500);
	Lens_Start(3500);
	//MoveFFP1("@絵Suf",20000);

	Delete("上背景");

//表示開始

	SoundPlay("@dm007a",0,450,true);


	Fw("fwAM蓮_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/5000010a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawTransition("絵色黒", 2000, 1000, 400, 300, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(500);
	Zoom("絵Suf", 2000, 2100, 2100, AxlDxl, false);
	DrawTransition("絵色黒", 2000, 400, 0, 300, AxlDxl, "cg/data/slide_05_00_0.png", false);
	Fade("絵色黒", 2000, 0, null, true);
	Delete("絵色黒");


{	Fw("fw蒼葉_通常_shock3");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/5000020a01">
"Huh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I somewhat regain my senses&, and just see a bunch of shoes squirming this way&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景効果", 1500, -50, Middle, "cg/bg/l/bg303024_5_娯楽施設クラブフロア_l.jpg");
	CreateTextureEXadd("絵背景効果2", 1500, -50, Middle, "cg/bg/l/bg303024_5_娯楽施設クラブフロア_l.jpg");

	MoveFFP1("@絵背景効果*",3500);

	Fade("絵背景効果", 0, 1000, null, true);
	Fade("絵背景効果2", 0, 1000, null, true);
	Fade("絵背景効果", 1000, 0, Axl2, false);
	Fade("絵背景効果2", 1000, 0, Axl2, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
{	Fw("fwm女性C_通常_normal");}
//【女性客Ａ】
<voice name="女性客Ａ" class="女性客Ａ" src="voice/dm11/5000030e24">
"Heeey&, are you okay?"

{
	Move("絵背景効果", 0, -950, @0, null, true);
	Move("絵背景効果2", 0, -950, @0, null, true);

	Fade("絵背景効果", 0, 1000, null, true);
	Fade("絵背景効果2", 0, 1000, null, true);
	Fade("絵背景効果", 1000, 0, Axl2, false);
	Fade("絵背景効果2", 1000, 0, Axl2, false);
	Fw("fwm若者C_通常_normal");}
//【男性客Ａ】
<voice name="男性客Ａ" class="男性客Ａ" src="voice/dm11/5000040e22">
"You're really in the way if you lay down there!"

{
	Move("絵背景効果", 0, -50, @0, null, true);
	Move("絵背景効果2", 0, -50, @0, null, true);

	Fade("絵背景効果", 0, 1000, null, true);
	Fade("絵背景効果2", 0, 1000, null, true);
	Fade("絵背景効果", 1000, 0, Axl2, false);
	Fade("絵背景効果2", 1000, 0, Axl2, false);
	Fw("fwm女性C_通常_normal");}
//【女性客Ａ】
<voice name="女性客Ａ" class="女性客Ａ" src="voice/dm11/5000050e24">
"He looks sooo dumb! Ahahahaha!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る03");
	CreateSE("SE01b","se人体_衝撃_叩く02");
	CreateSE("SE02","se人体_衝撃_転倒02");

	Shake("絵Suf", 400, 10, 5, 0, 0, 1000, Dxl1, false);
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Shake("絵Suf", 400, 8, 15, 0, 0, 1000, Dxl1, false);
	MusicStart("SE01b",0,700,0,1000,null,false);

	Wait(700);
	Shake("絵Suf", 400, 12, 5, 0, 0, 1000, Dxl2, false);
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
All I hear is the sound of slurring voices chattering away above me&.

They ignore my existance and walk over and on me like it's nothing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);



{	Fw("fw蒼葉_通常_pinch");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/5000060a01">
"Owowow&.&.&. Shit&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
I try to get myself up&, but I have no strength left in my 
arms&.

I can at least get my stomach and throat off the floor&, 
but I feel awful&. My headache is killing me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAM蓮_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/5000070a06">
"Aoba&, don't push yourself&. Your nerves are temporarily
 impaired&."

{	Fw("fw蒼葉_通常_pinch");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/5000080a01">
"I know that already&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm若者C_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【男性客Ａ】
<voice name="男性客Ａ" class="男性客Ａ" src="voice/dm11/5000090e22">
"Hey&, I said you were in the way&. Hurry up or I'll kick
 your ass out&."

{	Fw("fwm女性C_通常_normal");}
//【女性客Ａ】
<voice name="女性客Ａ" class="女性客Ａ" src="voice/dm11/5000100e24">
"Ahahaha&, go aheaad! Do iiit&. Looks like he can't even
 move anyway&."

{
//※ＳＥ：ひゅーひゅー、とひやかしの口笛
	CreateSE("SE01","se人体_動作_口笛01");
	MusicStart("SE01",0,700,0,1000,null,false);
}

{	Fw("fwm若者C_通常_normal");}
//【男性客Ａ】
<voice name="男性客Ａ" class="男性客Ａ" src="voice/dm11/5000110e22">
"Hey&, brooooo&. Are you alive?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	DeleteFw();

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色黒", 4000, "000000");
	Wait(30);
	Fade("絵色黒", 70, 0, null, true);
	Wait(300);
	Fade("絵色黒", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
Someone grabs my arm and pulls me up&.

I have to get away&.&.&.

But my&.&.&. head hurts so much&.
It's throbbing so hard that I can't even think&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm11/5000120a06">
"Aoba!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 500, 0, null);
	Wait(400);

	Request("プロセスライト１", Stop);
	Delete("絵色ライト*");
	Delete("レンズ*");

//※頭痛レベル：２
//※ずきん、ずきんと頭痛
	//頭痛エフェクト(0)
$HALevel=2;
	HAFade(2000, 0,false);

//※白蒼葉の声
//あきゅん「演出：白蒼葉の誘惑」

/*
	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev900もう１人の蒼葉.jpg");
	CreateColorSP("絵演黒隠", 1110, "000000");
	DrawTransition("絵演黒隠", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Wait(16);
	Fade("絵色黒", 0, 0, null, true);
	Wait(30);
	Fade("絵色黒", 200, 1000, null, false);
*/

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,-110,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);

	CreateColorSP("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(100,false);

//あきゅん「演出：アザナエルのTypeBeginFとSetTextMを流用したいな」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040b]
　――――　Destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,-190,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1100,1100);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE81","se人体_頭痛_痛む01");
	MusicStart("SE81",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(100,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
　――――　Destroy　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,-230,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1300,1300);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE81","se人体_頭痛_痛む01");
	MusicStart("SE81",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(100,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
　――――　Destroy everything　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,-340,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1600,1600);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE81","se人体_頭痛_痛む01");
	MusicStart("SE81",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(100,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
　――――　If you do　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearFadeAll(1000, true);
	Wait(500);

//※次ファイル["dm1160.nss"]

}
