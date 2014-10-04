//<continuation number="190">
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


scene dm0100_vs.nss_MAIN
{
$HALevel=1;//シナリオ中の頭痛レベル

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
	#ev010卯水=true;
	#ev010ライムの様子=true;
	#bg101051_5_旧住民区通り裏路地06ライム喧騒モブ=true;

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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0110_vs.nss";

	//▼頭痛レベル設定
	$HALevel=1;
}


scene dm0100_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateTextureSP("絵通常背景", 10, Center, Middle, "cg/bg/bg101011_3_旧住民区通り表.jpg");
	FadeDelete("上背景", 0, null, true);

	CreateTextureEX("絵演背景", 20, -512, -280, "cg/bg/m/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ_m.jpg");

	CreateSE("SEL91","se環境_喧騒_旧人民区青柳通り02L");
	MusicStart("SEL91",2000,700,0,800,null,true);
	CreateSE("SEL92","se環境_ガヤ_ざわつき01L");
	MusicStart("SEL92",2000,400,0,800,null,false);

	Fade("絵演背景", 600, 1000, null, false);
	Move("絵演背景", 1800, -256, @0, DxlAuto, true);

	Wait(200);

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
Nachdem Mizuki's Silhouette komplett verschwunden ist&,
drehe mich in die Richtung in die jeder rennt&.

Ich hasse Rhyme nicht so sehr wie Mizuki&, aber es interessiert mich nicht wirklich&.

Wenn du Mizuki zum ersten Mal triffst und ueber Rhyme redest&, 
wirst du ihn danach wahrscheinlich hassen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("絵演背景");
	CreateTextureSP("絵通常背景", 10, Center, Middle, "cg/bg/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ.jpg");
	FadeDelete("絵板写", 500, null, true);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/0000010a06">
"Was ist los?"

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/0000020a01">
"Nichts&. Lass uns weiter gehen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
Ich taetschle Rens Kopf und laufe in die laute Gasse&.

Dann&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 300, 0, Dxl3);

	CreateStencil("絵枠",1000,center,InBottom,128,"cg/st/stセイ_覚醒_normal.png",false);
	SetAlias("絵枠","絵枠");
	Move("絵枠", 0, @0, @60, null, true);
	SetShade("絵枠", HEAVY);
	CreateColorEXadd("絵枠/絵色白", 750, "FFFFFF");

	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,700,0,8000,null,false);
	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	Fade("絵枠/絵色白", 0, 150, null, true);
	DrawTransition("絵枠/絵色白", 1000, 0, 200, 1000, null, "cg/data/mosaic_01_00_0.png", false);
	Fade("絵色白", 300, 950, Axl3, true);

	Wait(500);

	CreateSurfaceEX("絵効果サフ", 900,1000,"@絵通常背景");
	Fade("絵効果サフ", 0, 1000, null, true);
	SetSurface("@絵枠*","絵効果サフ");

	Fade("絵色白", 3000, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
Ploetzlich bin ich in weisses Licht getaucht&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/0000030a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DrawTransition("絵枠/絵色白", 30000, 200, 500, 1000, null, "cg/data/mosaic_01_00_0.png", false);
	Fade("絵枠/絵色白", 30000, 400, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Licht erscheint vor mir und ich kann nichts mehr erkennen&.

Langsam nimmt es menschliche Form an und es streckt seinen Arm nach mir aus&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("絵枠/絵色白", 2500, 0, DxlAuto, false);
	Fade("絵色白", 2000, 0, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Seine Fingerspitzen streifen meine Wange - und verschwinden&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026a]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/0000040a01">
"Eh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※どわっとライムに群がる人々の歓声
	CreateSE("SE91","se環境_ガヤ_歓声01");
	MusicStart("SE91",1400,700,0,800,Axl3,false);
	CreateSE("SE92","se環境_ガヤ_歓声02");
	MusicStart("SE92",1400,1000,0,1000,Axl3,false);
	Delete("@絵効果サフ");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026b]
Waehrend ich mich frage was gerade passiert ist&, schwaermen ploetzlich  Menschen um mich herum&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 100);
	CreateSE("SEP011","se人体_動作_掴む01");
	MusicStartSet("SEP011",700,0,1000,null,false);
	CreateSE("SEP012","se人体_衝撃_叩く02");
	MusicStartSet("SEP012",1000,0,1000,null,false);
	CreateSE("SEP013","se人体_衝撃_転倒01");
	MusicStartSet("SEP013",1000,0,1000,null,false);
	CreateColorEX("絵色黒", 5000, "000000");

	CreateProcessEX("プロセス", "LProc_dm0100_vs_01Act");
	Request("プロセス", Start);

	FwPro2("fw蒼葉_通常_shock",1000,"fw蒼葉_通常_pinch",1800,"fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026c]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/0000050a01">
"E&, &.&.&.Eh? Wow!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	if($LProc_dm0100_vs_01Act==true){
	Request("プロセス", Stop);
	$LProc_dm2170_01Act=true;
	}else{
	}
	Delete("絵板写");
	Delete("プロセス");
	SetVolumeEX("SEP01*", 150, 0, null);

//覇：卯水登場分割読み込み(2/3)
	CreateTextureEXadd("絵卯水弐", 1015, Center, -320, "cg/ev/ev010卯水_人物卯水朧.png");
	Request("絵卯水弐", Lock);
	RhymeDrawSet("卯水",2000,center,InBottom,"cg/ev/ev010卯水_人物卯水のみ.png");
//ここまで△▲△

	CreateTextureEX("絵演背景", 100, 450, -1050, "cg/bg/l/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ_l.jpg");
	SetBlur("絵演背景", true, 3, 500, 50, false);
	Zoom("絵演背景", 1, 3000, 3000, null, true);

	Delete("SEP01*");

	CreateSE("SE01","se人体_衝撃_叩く02");
	MusicStart("SE01",0,1000,0,800,null,false);
	Fade("絵色黒", 30, 0, null, true);
	FadeFFR2("絵演背景", 0,1000, 180, 0, 0, 60,null, true);
	Fade("絵色黒", 70, 1000, null, true);

	Wait(100);

	CreateSE("SE02","se人体_動作_掴む01");
	MusicStart("SE02",0,1000,0,1200,null,false);
	Fade("絵色黒", 30, 0, null, true);
	FadeFFR2("絵演背景", 0,1000, 180, 0, 0, 60,null, true);
	Fade("絵色黒", 70, 1000, null, true);

	//Wait(100);

	//Fade("絵色黒", 300, 0, null, true);

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

	Delete("絵演背景");
	Delete("絵通常背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Ich werde von einer aufgeregten Gruppe belagert&. 
Ich denke nicht das ich hier rauskomme&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06ライム喧騒モブ");
	FadeBG(0,true);

	CreateSE("SE81","se環境_ガヤ_歓声01");
	MusicStart("SE81",1400,700,0,800,Axl3,false);
	CreateSE("SE82","se環境_ガヤ_歓声02");
	MusicStart("SE82",1400,1000,0,1000,Axl3,false);

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

	Fw("fwm若者B_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【男の歓声１】
<voice name="男の歓声１" class="男の歓声１" src="voice/dm01/0000060e37">
"Usui&, Usui!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

/*
//【男の歓声２】
<voice name="男の歓声２" class="男の歓声２" src="voice/dm01/0000070e38">
"Hier ist sie! Usui!"
*/

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

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034a]
Ein grosser Kreis aus Licht schwebt ueber dem Boden und darin ist&.&.&.

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

/*
	Fw("fwm若者B_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034b]
//【男の歓声１】
<voice name="男の歓声１" class="男の歓声１" src="voice/dm01/0000080e37">
"Usuiii!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	CreateVOICE("男の歓声１","dm01/0000080e37");
	MusicStart("男の歓声１",0,1500,200,1000,null,false);

	CreateVOICE("男の歓声２","dm01/0000070e38");
	MusicStart("男の歓声２",0,1500,-200,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034c]
Der Koerper der Frau aus Licht schwankt leicht&, doch kommt bald zur Ruhe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//卯水登場：元の画面に戻る
	CreatePlainSP("絵板写", 5000);

	CoilIntoDelete();
	Delete("絵最後*");
	Delete("卯水*");
	Delete("絵背景*");

	CreateTextureSP("絵ＥＶ", 1000, -470, -260, "cg/ev/l/ev010ライムの様子_l.jpg");
	Move("絵ＥＶ", 1300, @0, -190, DxlAuto, false);
	FadeDelete("絵板写", 1300, null, true);

	CreateSE("SE91","se環境_ガヤ_歓声01");
	MusicStart("SE91",0,700,0,800,Axl3,false);
	CreateSEEX("SE92","se環境_ガヤ_歓声02");
	MusicStart("SE92",0,1000,0,1000,Axl3,true);

	SoundPlay("@dm010",0,450,true);//電脳バトル

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【卯水】
<voice name="卯水" class="卯水" src="voice/dm01/0000090c06">
"Nun&, es tut mir Leid das ihr alle warten musstet! Rhyme startet jetzt!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Request("絵ＥＶ", Smoothing);
	Zoom("絵ＥＶ", 800, 500, 500, DxlAuto, false);
	Move("絵ＥＶ", 800, -512, -328, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【卯水】
<voice name="卯水" class="卯水" src="voice/dm01/0000100c06">
"Der erste Kampf heute ist zwischen 'Player' und 'Route 44'!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE92", 2000, 600, null);

	CreateSE("SE81","se環境_ガヤ_歓声01");
	MusicStart("SE81",0,700,0,800,Axl3,false);
	CreateSE("SE82","se環境_ガヤ_歓声02");
	MusicStart("SE82",0,1000,0,1000,Axl3,false);

//あきゅん「※：セリフ場所調整」

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【卯水】
<voice name="卯水" class="卯水" src="voice/dm01/0000110c06">
"'Player' hat 5 Mal teilgenommen und 3 Mal gewonnen&. Im Gegensatz dazu&,ist das 'Route 44's erster Kampf!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
&.&.&.Das ist Rhyme&.

Ich habe es schon einige Male aus der Ferne gesehen&, aber ich war noch nie so nah 
dran&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Move("絵ＥＶ", 0, -490, -190, null, true);
	Zoom("絵ＥＶ", 0, 1000, 1000, null, true);
	FadeDelete("絵板写", 300, null, true);

	CreateVOICE("卯水","dm01/0000110c06");
	MusicStart("卯水",0,1800,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0048]
Innerhalb des Lichts erscheint das Symbol und der Schiedsrichter von Rhyme&, Usui&.

Usui hat eine tiefe Stimme&, was nicht ihrem Aussehen entspricht&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("卯水", 300, 0, null);
	Move("絵ＥＶ", 2000, @0, 0, null, true);


	CreateMovieEX("絵演動画", 1120, Center, -80, true, false, "dx/mvフィールドパブリック_s.ngs");
	Rotate("絵演動画", 1, 20, @0, @0, null,true);
	SetTone("絵演動画", KitanoBlue);
	Zoom("絵演動画", 0, 0, 0, null, true);

	CreateSE("SE01","se物体_コイル_ターゲット展開");
	MusicStart("SE01",0,1000,0,500,null,false);

	Fade("絵演動画", 0, 500, null, true);
	Zoom("絵演動画", 300, 1500, 100, Axl3, true);
	Zoom("絵演動画", 300, 1500, 1500, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0049a]
Waehrend sie das Licht erhellt und mit ihren Armen schaukelt&,
erscheint ein grosser Monitor ueber ihrem Kopf&.

Das Publikum kann den aktuellen Stand des Spieles ueber den Monitor beobachten&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateWindowEX("絵窓左", 0, 0, 1024, 576, false);
	CreateMaskEX("絵窓左/絵覆", 0, Center, Middle, "cg/mask/ciスラッシュ_05_00.png", false);
	CreateTextureEX("絵窓左/絵枠", 2990, Center, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	Move("絵窓左/絵*", 0, @-150, @0, null, true);
	CreateTextureEX("絵窓左/絵覆/絵演", 2110, -260, -20, "cg/ev/l/ev010ライムの様子_l.jpg");
	Fade("絵窓左*", 0, 0, null, true);

	CreateWindowEX("絵窓右", 0, 0, 1024, 576, false);
	CreateMaskEX("絵窓右/絵覆", 0, Center, Middle, "cg/mask/ciスラッシュ_05_01.png", false);
	CreateTextureEX("絵窓右/絵枠", 2990, Center, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	Move("絵窓右/絵*", 0, @150, @0, null, true);
	CreateTextureEX("絵窓右/絵覆/絵演", 2110, -270, 0, "cg/ev/m/ev010ライムの様子_m.jpg");
	Fade("絵窓右*", 0, 0, null, true);

	Wait(16);

	Fade("絵窓左/絵枠", 0, 1000, null, true);
	DrawTransition("絵窓左/絵枠", 500, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", false);
	Fade("絵窓左/絵覆/絵演", 0, 1000, null, true);
	DrawTransition("絵窓左/絵覆/絵演", 500, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", false);

	Fade("絵窓右/絵枠", 0, 1000, null, true);
	DrawTransition("絵窓右/絵枠", 500, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", false);
	Fade("絵窓右/絵覆/絵演", 0, 1000, null, true);
	DrawTransition("絵窓右/絵覆/絵演", 500, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0049c]
Die Teilnehmer stehen bereits auf den beiden Seiten und veraendern die Einstellungen ihres Allmates&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【卯水】
<voice name="卯水" class="卯水" src="voice/dm01/0000120c06">
"Kann der Newcomer die Siegesserie beenden!? Oder&.&.&.!?"

//【卯水】
<voice name="卯水" class="卯水" src="voice/dm01/0000130c06">
"Okay&, 'Player' hat die Vorbereitung abgeschlossen! 'Route 44'&.&.&. Bist du auch bereit?"

//【卯水】
<voice name="卯水" class="卯水" src="voice/dm01/0000140c06">
"Beide scheinen bereit zu sein! Nun denn&, lasst uns anfangen!
 SPIEL&.&.&. START!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_ライム_アラート01");
	MusicStart("SE01",0,1200,0,500,null,false);

	WaitKey(300);

	CreateSE("SE82","se環境_ガヤ_歓声02");
	MusicStart("SE82",0,1000,0,1000,Axl3,false);

	PrintGO("上背景", 5000);

	CreateTextureSP("絵背景", 100, -160, -480, "cg/bg/l/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ_l.jpg");

	FadeDelete("上背景", 500, null, true);

	SetVolumeEX("SE8*", 10000, 0, null);
	SetVolumeEX("SE9*", 10000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
Usui laechelt und hebt ihre Hand mit einer Bewegung&,
die nicht recht zu ihrer Stimme passt&.

Der Monitor strahlt ein weisses Licht aus und projeziert das Kampffeld&.

Das Publikum jubelt und johlt zu gleich&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 300, 0, null);

	CreateTextureEXsub("絵演白蒼葉", 4010, Center, Middle, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");
	CreateColorEX("絵色白", 4000, "FFFFFF");

//あきゅん「※：最初の頭痛？　なので少し強めに」

	Fade("絵演白蒼葉", 0, 200, null, true);
	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Delete("絵演白蒼葉");
	CreatePlainEX("絵板写", 100);
	Zoom("絵板写", 0, 1100, 1100, null, true);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 6, 0, 0, 1000, Dxl1, false);
	FadeDelete("絵色白", 70, null, true);

//※頭痛レベル：０→１
//※ずきん、と頭痛
$HALevel=1;
	HAFade(2000, 0,false);
	//頭痛エフェクト(0)

	SetBlur("絵板写", true, 3, 500, 30, false);
	Fade("絵板写", 2000, 0, null, false);
	Zoom("絵板写", 6000, 1000, 1000, DxlAuto, false);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/0000150a01">
"&.&.&.Agh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Ploetzlich spuere ich einen stechenden Kopfschmerz&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Zoom("絵板写", 0, 1050, 1050, null, true);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 6, 0, 0, 1000, Dxl1, false);

//※頭痛レベル：０
//※ずきん、ずきんと頭が痛い
	//頭痛エフェクト(0)
	//頭痛エフェクト(0)
	HAFade(2000, 0,false);

	Fade("絵板写", 2000, 0, null, false);
	Zoom("絵板写", 6000, 1000, 1000, DxlAuto, false);

{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/0000160a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
Ich halte mir meine Stirn und mein Blick wandert&.

Was? Nur weil das Publikum so laut ist?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/0000170a06">
"Aoba&, geht es dir gut?"

{	Fw("fw蒼葉_通常_worry2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/0000180a01">
"&.&.&.Ja&, Alles in Ordnung&. Aber lass uns gehen&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/0000190a06">
"Das waere wohl das Beste&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("絵板写2", 7000);
	Delete("絵背景");
	Delete("絵板写");
	OnBG(10,"bg101051_5_旧住民区通り裏路地06ライム喧騒モブ");
	FadeBG(0,true);
	FadeDelete("絵板写2", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Ich draenge mich durch die in den Bann von Rhyme gezogenen Zuschauer und 
schlaengle mich aus dem Haufen von Schaulustigen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 100, -1190, -1600, "cg/bg/l/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ_l.jpg");
	Zoom("絵背景", 0, 3000, 3000, null, true);
	Request("絵背景", Smoothing);

	CreateSE("SE01","se人体_動作_衣擦れ26");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景", 600, @0, -1656, DxlAuto, false);
	Fade("絵背景", 600, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Ich lehne mich an eine nahegelegene Wand&, atme aus und starre auf den Boden&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0110_vs.nss"]

}
