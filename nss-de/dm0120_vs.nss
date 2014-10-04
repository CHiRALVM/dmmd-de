//<continuation number="90">
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


scene dm0120_vs.nss_MAIN
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
	$GameName = "dm0130.nss";

}


scene dm0120_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm009",0,450,true);//バトル

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg101011_3_旧住民区通り表");
	FadeBG(0,true);

	CreateTextureSP("絵演背景", 20, -500, -520, "cg/bg/m/bg101011_3_旧住民区通り表_m.jpg");
	Move("絵演背景", 450, -300, @0, Dxl3, false);

	Delete("上背景");
	DrawDelete("絵色黒", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Ich entscheide mich weiter zur Aoyagi Strasse zu gehen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵演背景", 450, -200, @0, Dxl3, false);

//※バイクが急速に近付いてくる
	CreateSE("SE01","se乗物_改造前バイク_走行01L");
	MusicStart("SE01",2000,1000,0,800,Axl3,true);
	SetFrequency("SE01", 4000, 1400, null);

	CreateColorSP("絵黒幕", 10000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景", 100, Center, 200, "cg/ef/efbg疾走001.jpg");
	Zoom("絵背景", 0, 1200, 2000, null, true);

	CreateMovieEX("絵演動画", 1000, Center, Middle, true, true, "dx/mv0003集中線01_白.ngs");
	Zoom("絵演動画", 0, 4000, 3000, null, true);
	Fade("絵演動画", 0, 400, null, true);

	CreateColorSP("絵色白", 1100, "FFFFFF");

	CreateTextureSPadd("絵演照明", 1100, Center, Middle, "cg/data/circle_04_00_1.png");
	MoveFFP1("@絵演照明",100);
	Zoom("絵演照明", 100000, 4000, 4000, null, false);
	SetBlur("絵演照明", true, 2, 200, 50, false);

	Wait(400);

	FadeDelete("絵黒幕", 150, null, true);
	Wait(500);
	FadeDelete("絵色白", 2000, null, false);
	DrawTransition("絵色白", 2000, 1000, 0, 100, Axl3, "cg/data/circle_04_00_1.png", true);

	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/2000010a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 5000, "000000");
	Zoom("絵演照明", 300, 4000, 4000, null, false);
	Fade("絵色白", 300, 1000, Axl3, true);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm*", 300, 0, null);

//※バイクの急ブレーキ音、蒼葉転倒
	CreateSE("SE02","se乗物_改造前バイク_急ブレーキ01");
	MusicStart("SE02",0,1200,0,1000,null,false);

	Delete("絵演照明");
	Delete("絵演動画");
	Delete("絵背景");
	MoveFFP1stop();

	CreateTextureSP("絵演背景", 20, -660, -2165, "cg/bg/l/bg101011_3_旧住民区通り表_l.jpg");
	Zoom("絵演背景", 0, 3000, 3000, null, true);
//	Request("絵演背景", Smoothing);

	CreateSE("SE03","se人体_衝撃_転倒01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Delete("絵色白");
	BGPlainShake(50,300,0,80,0,0,1000,null,true);

	Wait(500);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/2000020a01">
"&.&.&.Egh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Ich wurde fast von einem Motorrad ueberfahren&, als ich mich an der Ecke umdrehte&.

Ich rolle mich schnell zur Seite&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※バイクのアイドル音、ミンクがバイクに乗ったまま地面に片足をつく（ブーツ）
	CreateSE("SE01","se乗物_改造バイク_アイドリング01L");
	MusicStart("SE01",2000,700,0,800,null,true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/2000030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演単車補填", 1100, -252, -207, "cg/ev/x/ev920ミンクと蒼葉バイク_人物_前輪部分_xm.png");
	Request("絵演単車補填", Smoothing);

	CreateTextureEX("絵演単車", 1100, -252, -207, "cg/ev/x/ev920ミンクと蒼葉バイク_人物_前輪部分_xm.png");
	Request("絵演単車", Smoothing);

	SetShade("絵演単車", SEMIHEAVY);

	CreateTextureSP("絵背景二", 15, 0, -520, "cg/bg/m/bg101011_3_旧住民区通り表_m.jpg");

/*
	Move("絵背景二", 2000, @0, @60, Dxl2, false);

	Move("絵演単車*", 2000, @0, @60, Dxl2, false);
	Fade("絵演単車*", 800, 1000, null, false);

	Move("絵演背景", 2000, @0, @60, Dxl2, false);
	Fade("絵演背景", 800, 0, null, true);
*/

//あきゅん「※：文章分割しました」

	CreateProcessEX("プロセス", "LProc_dm0120_vs_01Act");
	Request("プロセス", Start);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Ich schaue zum Motorrad auf&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演民苦", 3110, Center, 90, "cg/fu/fuミンク_通常_serious.png");
	Request("絵演民苦", Smoothing);
	Zoom("絵演民苦", 0, 3000, 3000, null, true);
	DrawTransition("絵演民苦", 1, 0, 300, 100, null, "cg/data/slide_05_01_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Der Mann macht sich keinen Spass daraus&.<?>
{
	if($LProc_dm0120_vs_01Act==true){
	}else{
	Request("プロセス", Stop);
	CreatePlainSP("絵板写", 9900);
	Fade("@絵演背景", 0, 0, null, true);
	Move("@絵背景二", 0, @0, -460, null, false);
	Move("@絵演単車*", 0, @0, -147, null, false);
	SetShade("@絵背景二", SEMIHEAVY);
	SetShade("@絵演単車*", null);
	Delete("絵板写");
	Delete("@LProc_dm0120_vs_01ActEFP");
	FadeDelete("絵板写", 300, null, true);
	$LProc_dm0120_vs_01Act=true;
	}
	Delete("プロセス");
	SetVolumeEX("SE*", 150, 2, null);
	CreateSE("SE02","se人体_心臓_鼓動01");
	MusicStart("SE02",0,1200,0,1000,null,false);
	FadeFFR("絵演民苦", 0,1000, 100, 0, 0, 30,null, true);
	Wait(50);
	Delete("絵演民苦");
}
 Seine Augen sind auf mich fokusiert&.

{
	SetVolumeEX("SE01", 4000, 700, null);
}
&.&.&.Als ich ihm in die Augen sehe&, jagt eine Kaelte durch meinen Koerper&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 300, 0, null);
	CreateSE("SE01","se乗物_改造前バイク_走り去る");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵演単車*", 600, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0027]
Der Mann sagt nichts und rasst mit seinem Motorrad davon&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE03","se戦闘_動作_走る01a");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateTextureEX("絵背景", 2110, Center, -156, "cg/bg/bg101011_3_旧住民区通り表.jpg");
	Move("絵背景", 400, @0, -90, Dxl3, false);
	Fade("絵背景", 200, 1000, null, true);

	CreateSE("SE04","se環境_喧騒_旧人民区青柳通り02L");
	MusicStart("SE04",6000,700,0,1000,null,true);

{	Fw("fw蒼葉_通常_shout");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0028]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/2000040a01">
"! &.&.&.Hey!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
Ich stehe schnell auf&, doch es ist zu spaet&.

{	SetVolume("SE01", 3000, 0, null);}
Das Motorrad heult auf und rast die Strasse in einem Augenblick herunter&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_hard");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/2000050a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Dieser Bastard&.&.&.!

Er hat fast einen Verkehrsunfall verursacht und hat sich nicht mal dafuer entschuldigt&, 
dass er fast jemanden ueberfahren haette!

Es ist in dieser Stadt nicht unueblich&, aber ich bin trotzdem wuetend&.

Mich schuettelt es bei dem Gedanken&, von diesem Typen ueberfahren zu werden&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/2000060a06">
"Aoba&, geht es dir gut?"

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/2000070a01">
"Ja&, gerade noch&. Aber das war knapp&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/2000080a06">
"Es ist eine Erleichterung das es dir gut geht&."

{	Fw("fw蒼葉_通常_sigh3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/2000090a01">
"Ja&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Rens besorgte Worte beruhigen mich und meine Wut schwindet dahin&.

Tja&, da ich sicher bin&, sollte Alles in Ordnung sein&.&.&.

Meine Stimmung bessert sich und ich gehe nach Hause&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("SE*", 1250, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//※次ファイル["dm0130.nss"]

}
