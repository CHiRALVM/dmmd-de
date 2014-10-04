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


scene dm5440_vs.nss_MAIN
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
	$GameName = "dm5450_vs.nss";

}


scene dm5440_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304081_5_東江タワー物置部屋");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/4000010a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Ren?

Did he start up?

{
	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);
}
In high spirits&, I open my bag and take out Ren&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/4000020a01">
"Hey&, Ren&. Are you all right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
When I go to pick him up&.&.&.
I stop my hands before I can touch him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	CreateColorEX("絵色黒", 5000, "000000");
	DrawTransition("絵色黒", 0, 400, 400, 200, null, "cg/data/slide_05_00_0.png", true);
	CreateTextureEX("絵背景", 100, Center, -576, "cg/bg/bg304081_5_東江タワー物置部屋.jpg");
	CreateTextureEX("キャラ", 100, Center, Middle, "cg/st/x/stAM蓮_通常_rage_x.png");
	Zoom("絵背景", 0, 3000, 3000, null, true);
	SetShade("絵背景", HEAVY);

	Move("絵背景", 0, @100, @0, null, true);
	Move("キャラ", 0, @200, @0, null, true);

	Move("絵背景", 800, @-100, @0, Dxl1, false);
	Move("キャラ", 800, @-200, @0, Dxl1, false);

	Fade("絵色黒", 300, 1000, null, false);
	Fade("絵背景", 300, 1000, null, false);
	Fade("キャラ", 300, 1000, null, true);

	Wait(1200);
	Shake("キャラ", 2000, 1, 0, 0, 0, 1000, null, false);

//{	Fw("fwAM蓮_通常_rage");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm54/4000030a06">
"Grrrrrrrr!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Ren keeps his distance from me&, his hackles up and his 
teeth bared&, growling deep and low&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/4000040a01">
"Ren&.&.&."

{	Fw("fwAMベニ_通常_normal");}
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm54/4000050b16">
"You&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{
	Shake("キャラ", 400, 0, 5, 0, 0, 1000, null, false);

//	Fw("fwAM蓮_通常_rage");
}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm54/4000060a06">
"Grrr!"

When I reach out to Ren&, his entire body shakes as he 
bellows at me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/4000070a04">
"Ren-san? You seem odd&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/4000080a03">
"&.&.&.Isn't he different from before?"

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm54/4000090a05">
"Did you replace his AI chip?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 6000);
	Delete("絵色黒");
	Delete("絵背景");
	Delete("キャラ");
	FadeDelete("絵板写", 500, null, true);

	SetVolumeEX("@dm*", 500, 0, null);

	Wait(600);

//あきゅん「演出：ライム、突入前のまどろみ」
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
	FadeDelete("@絵色白", 3000, null, false);
	Wait(1000);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/4000120a01">
"&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(500);
	WaitAction("@絵色白", null);

//あきゅん「演出：ライム空間への突入でファイル終了」
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
	$nextrhymescene="dm5450_vs.nss";

//※次ファイル["dm5450_vs.nss"]

}
