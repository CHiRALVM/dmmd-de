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


scene dm2240.nss_MAIN
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
	//#ev900白蒼葉化=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2250.nss";

$HALevel=2;

}


scene dm2240.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	TextBoxDelete(0);

	PrintBG("上背景", 30000);

	SoundPlay("@dm008",0,1,true);//疾走

	CreateColorEX("絵色黒上面", 5000, "000000");
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	CreateColorSP("絵色黒", 100, "000000");

	CreateSE("SE01","se擬音_効果_キーン01");
	MusicStart("SE01",0,700,0,1100,null,false);

	FadeDelete("上背景", 0, null, true);
	Wait(300);
	FadeDelete("絵色白", 1000, null, true);

	Wait(300);

//あきゅん「演出：白蒼葉の誘惑」

	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　――――　Use it　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 12000, "000000");
	Fade("絵色黒", 300, 1000, null, true);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,Middle,"cg/ev/ev900もう１人の蒼葉.jpg",1000,1000);

	CreateColorEX("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	$HALevel=0;
	Fade("絵演黒蒼葉誘惑黒隠", 0, 1000, null, true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);
	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	$HALevel=2;

	Wait(200);

	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("絵色黒");

	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
　――――　Use it&, use your power　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	TemptationAobaSet("絵演黒蒼葉誘惑",1100,-501,30,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);

	Fade("絵演黒蒼葉誘惑砂嵐覆", 0, 1000, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
　――――　Use it　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	TemptationDelete("@絵演黒蒼葉誘惑黒隠");
	FadeDelete("絵色黒", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
&.&.&.&.&.

&.&.&.&.&.

&.&.&.The power&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	PrintGO("上背景", 5000);

	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	CreateSE("SE01","se擬音_効果_キーン01");//あきゅん「ＳＥ：se擬音_効果_キーン01」
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("@dm008", 4000, 450, null);

	FadeDelete("上背景", 0, null, true);
	FadeDelete("絵色白", 1000, null, true);

	Wait(300);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/4000010a01">
"&.&.&.Haah!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Akushima approaches before my very eyes&.

{
	SetVolumeEX("@dm008", 0, 350, null);
	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
&.&.&.The power&.

{
	SetVolumeEX("@dm008", 0, 250, null);
	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,900,0,1000,null,false);
}
&.&.&.The power!

{
	SetVolumeEX("@dm008", 0, 150, null);
	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,1100,0,1000,null,false);
}
I jump at Akushima and press my hand against his forehead&.

{
	SetVolumeEX("@dm008", 0, 0, null);
	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,1300,0,1000,null,false);
}
I stared at his unfocused eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：仮入れ、まあこんな感じよ」

/*
	CreateWindowEX("絵窓", 0, 77, 1024, 230, false);
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵色白", 4000, "FFFFFF");
	CreateTextureSP("絵窓/絵ＥＶ", 1100, Center, -70, "cg/ev/ev900白蒼葉化.jpg");

	Zoom("絵窓", 150, 1000, 1000, Dxl3, true);
	Wait(50);
	Fade("絵窓/絵色白", 150, 0, null, true);
*/

	CreateColorEXadd("絵色白", 5000, "FFFFFF");

	CreateSE("SE01","se擬音_効果_力クリア01");
	MusicStart("SE01",0,500,0,1500,null,false);
	SetVolumeEX("SE01", 2000, 1200, null);
	SetFrequency("SE01", 2000, 1470, null);
	Fade("絵色白", 2000, 500, Axl2, true);
	SetVolumeEX("SE01", 600, 0, null);
	Wait(100);
	FadeDelete("絵色白", 1000, null, true);


	Fw("fw蒼葉_通常力行使_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//※力発動時
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/4000020a01">
"&.&.&.Sink&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

//あきゅん「確認：どういう感じなんだろう？」

//※ばちーんと光が弾ける→視界がテレビノイズになる。その中に白蒼葉の幻影が口元から下のみ、一瞬だけ映る→またテレビノイズ→ホワイトアウト？
	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);

	CreateSE("SE11","se擬音_効果_ノイズ01L");
	MusicStart("SE11",0,1200,0,1000,null,true);

	CreateTextureEX("絵演砂嵐2", 2000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵演砂嵐2", 0, 1100, 1100, null, true);
	FadeFFR2("絵演砂嵐2", 0,1000, 10, 0, 0, 50,null, true);
	Fade("絵演砂嵐2", 0, 1000, null, false);


	FadeDelete("絵フラッシュ白", 50, null, true);

	SetVolumeEX("SE11", 100, 10, null);

	CreateTextureSP("絵ＥＶ1000", 1900, -501, -383, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");
	CreateTextureEXsub("絵演砂嵐", 3000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵演砂嵐", 0, 1100, 1100, null, true);
	FadeFFR2("絵演砂嵐", 0,1000, 10, 0, 0, 50,null, true);
	Fade("絵演砂嵐", 50, 1000, null, false);
	Delete("絵演砂嵐2");

	SetVolumeEX("SE11", 0, 1200, null);
	Wait(100);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	Delete("絵演砂嵐");
	Delete("絵ＥＶ1000");
	SetVolumeEX("SE11", 0, 0, null);
	FadeDelete("絵フラッシュ白", 50, null, true);

//	Wait(1000);

/*
	FadeDelete("絵窓/絵ＥＶ", 500, null, true);
	Delete("絵窓");
*/

//※次ファイル["dm2250.nss"]

}
