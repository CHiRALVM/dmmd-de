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


scene dm5610.nss_MAIN
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
	#ev561いじめられるセイ=true;
	#ev561いじめられるセイa=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5620.nss";

}


scene dm5610.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304161_5_東江タワーセイ自室前");
	FadeBG(0,true);
	CreateTextureSP("絵背景下", 11, Center, -380, "cg/bg/l/bg304161_5_東江タワーセイ自室前_l.jpg");

	FadeDelete("上背景", 0, null, true);

	CreateTextureEX("絵背景100", 100, Center, -434, "cg/bg/l/bg304161_5_東江タワーセイ自室前_l.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, false);
	Request("絵背景100", Smoothing);
	Fade("絵背景100", 1000, 1000, null, true);

//	CreateSE("SE01","se物体_グリッター玄関_扉開く01a");
//	MusicStart("SE01",0,700,0,700,null,false);

//	Wait(1000);

	CreateSE("SE02","se物体_グリッター玄関_扉開く01b");
	MusicStart("SE02",0,700,0,700,null,false);

	CreateColorSP("絵白幕", 1000, "ffffff");
	DrawTransition("絵白幕", 2000, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", true);

	Wait(1000);

	CreateTextureSP("絵ＥＶ110", 110, 1000, -71, "cg/ev/l/ev561いじめられるセイ_l.jpg");
	Zoom("絵ＥＶ110", 0, 2000, 2000, null, false);
	Request("絵ＥＶ110", Smoothing);

	FadeDelete("絵白幕", 2000, null, true);

	Move("絵ＥＶ110", 2000, 1000, 410, Dxl1, true);

	CreateTextureEX("絵ＥＶ111", 111, -1430, -200, "cg/ev/l/ev561いじめられるセイ_l.jpg");
	Zoom("絵ＥＶ111", 0, 1400, 1400, null, false);
	Request("絵ＥＶ111", Smoothing);

	Fade("絵ＥＶ111", 1000, 1000, null, true);
	Move("絵ＥＶ111", 1500, -1430, -521, Dxl1, true);

	Delete("絵ＥＶ110");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0009]
The room is bright and colorful&, and decorated in a way 
not unlike a playroom for children&.

The ribbons&, the toys&, the gift boxes&.&.&. The sudden burst 
of color gives me a flash of dizziness&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ111", 2000, -869, -521, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
A feeble-looking boy sits on a chair in the middle of the 
room&, unmoving&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/1000010a01">
"&.&.&.Sei&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	Move("絵ＥＶ111", 800, -569, -521, Dxl1, false);

	CreateTextureEX("絵ＥＶ112", 112, Center, Middle, "cg/ev/ev561いじめられるセイ.jpg");
	Fade("絵ＥＶ112", 800, 1000, null, true);

	Delete("絵ＥＶ111");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Upon seeing his blank expression&, suffocating lumps arose 
in my throat&.

I swallowed them down and walked up to Sei&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ113", 113, -384, -367, "cg/ev/l/ev561いじめられるセイ_l.jpg");
	Move("絵ＥＶ113", 1500,  -384, -98, Dxl1, false);
	Fade("絵ＥＶ113", 1500, 1000, null, true);

	Wait(500);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
The pale skin of his cheeks are of an almost transparent 
whiteness&. I reach out and put one hand to his face&.

His skin is cold&.

I suddenly remember our brief meeting in that back alley&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写１", 10000);

	CreateTextureSP("回想1000", 1000, Center, Middle, "cg/ev/ev515うずくまるセイa.jpg");

	CreateColorSP("回想色", 5000, "624a2b");
	Request("回想色", OverlayRender);

	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写１", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Sei was squatting down like a lost child in the corner of 
a forgotten alleyway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Toue mentioned that Sei longed for freedom and had created countless self-consciousnesses&.

And because of that&, both his body and his mind began to 
deteriorate&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写２", 10000);

	Delete("回想*");

	FadeDelete("絵板写２", 500, null, true);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/1000020a01">
"&.&.&.I'm sorry for being so late&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
As I murmur an apology&, Sei's eyelashes make the slightest movement&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ114", 114, -384, -98, "cg/ev/l/ev561いじめられるセイa_l.jpg");
	Fade("絵ＥＶ114", 600, 1000, null, true);
	Delete("絵ＥＶ113");
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
His dark&, dull eyes slowly move to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Sei(2000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
At that moment&.&.&.

An electric shock ran through my body&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1500, 0, null);

	Sei(2000,1000,true);

	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵ＥＶ115", 115, -384, -128, "cg/ev/l/ev561いじめられるセイa_l.jpg");
	Zoom("絵ＥＶ115", 500, 1300, 1300, null, false);
	FadeDelete("絵ＥＶ115", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/1000030a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_効果_キーン01");
	MusicStart("SE01",0,700,0,500,null,false);

	CreateColorEX("絵白幕", 5000, "FFFFFF");
	Fade("絵白幕", 0, 850, null, true);
	DrawTransition("絵白幕", 500, 0, 1000, 100, Dxl1, "cg/data/circle_02_00_0.png", true);

	CreateColorEXadd("絵白幕２", 5001, "FFFFFF");
	Fade("絵白幕２", 0, 1000, null, true);
	DrawTransition("絵白幕２", 5000, 0, 1000, 1000, Dxl1, "cg/data/circle_02_00_0.png", true);

	Wait(1000);

//※蒼葉（と蓮）、強制的に精神世界へ連れて行かれる
//※セイの精神世界。真っ白で何もない。

//※次ファイル["dm5620.nss"]

}
