//<continuation number="210">
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


scene dm4490_vs.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	#ev449セーフティ外し=true;
	#ev940歌うクリア=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	if($クリア選択肢8==1){	$GameName = "dm4500.nss";
	}else {		$GameName = "dm4491.nss";
	}

}


scene dm4490_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

//覇：絶対座標
	CreateColorSP("絵色黒", 2000, "000000");
	CreateColorEX("絵色フラッシュ", 2000, "FFFFFF");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304122_5_東江タワー東江の間.jpg");
	CreateTextureEX("絵壱枚絵", 800, Center, Middle, "cg/ev/ev449セーフティ外し.jpg");
	CreateTextureSP("絵壱枚絵弐", 601, -165, 40, "cg/ev/l/ev449セーフティ外し_l.jpg");
	CreateTextureSP("絵壱枚絵弐下", 600, -165, 40, "cg/ev/l/ev449セーフティ外し_l.jpg");
	CreateTextureEXadd("絵壱枚絵弐上", 602, -165, 40, "cg/ev/l/ev449セーフティ外し_l.jpg");

	Request("絵壱枚絵弐", Smoothing);

	Zoom("絵演出", 0, 2000, 2000, null, true);
	Zoom("絵壱枚絵弐*", 0, 1500, 1500, null, true);

	FadeDelete("上背景", 0, Dxl1, true);

//※がしゃん、とロボットの頭部にナイフがぶち当たって壊れる

	Move("絵壱枚絵弐*", 200, 500, 225, Axl3, false);
	Wait(30);
	Fade("絵色黒", 150,0, Null, true);

	Shake("絵壱枚絵弐", 300, 300, 80, 0, 0, 800, Dxl3, false);
	Fade("絵壱枚絵弐上", 200, 800, Dxl1, false);
	Zoom("絵壱枚絵弐上", 400, 2010, 2010, Axl1, false);

	CreateSE("SE10","se物体_金属_衝突02");
	MusicStart("SE10",0,700,0,1000,null,false);

	Wait(100);

	FadeDelete("絵壱枚絵弐上", 100, null, true);

	CreateSE("SE03","se擬音_効果_火花01");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateSE("SE04","se擬音_効果_火花02");
	MusicStart("SE04",0,700,0,1000,null,false);

	CreateTextureEXadd("絵演出", 6000, 404, 173, "cg/ef/efx02火花電光02.jpg");
	Zoom("絵演出", 0, 1800, 1800, null, true);
	FadeFF("絵演出", 30, 1000, 300, 0, 0, Dxl3, false);
	Wait(50);
	FadeDelete("絵演出", 30, Dxl2, true);

/*
	CreateSE("SE01","se擬音_効果_火花01");
	MusicStart("SE01",0,700,0,1400,null,false);
	CreateSE("SE02","se擬音_効果_火花02");
	MusicStart("SE02",0,700,0,1400,null,false);

	CreateTextureEXadd("絵演出2", 6001, 239, -107, "cg/ef/efx02火花電光02.jpg");
	Zoom("絵演出2", 0, 1500, 1500, null, true);
	FadeFF("絵演出2", 30, 1000, 300, 0, 0, Dxl3, false);
	Wait(50);
	FadeDelete("絵演出2", 30, Dxl2, true);

	Fade("絵色フラッシュ", 200,1000, Dxl1, true);
*/

	Fade("絵色フラッシュ", 200,1000, Dxl1, true);

	Delete("絵壱枚絵弐*");
	Fade("絵壱枚絵", 0, 1000, Dxl1, true);

	FadeDelete("絵色フラッシュ", 300, Axl1, true);

	Wait(500);

//覇：下記修正しました（固い→硬い）
//　金属質の固い音とともに火花が散り、鋭い刃先がクリアの側頭部を直撃した。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The sound of metal clanks and sparks fly as Clear strikes 
a direct blow to his head with the sharp edge of his blade&.

Oil spurts out like blood&, and even more skin tears off 
and flutter onto the floor&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_機械_探る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE03","se擬音_効果_火花01");
	MusicStart("SE03",0,700,0,1400,null,false);

	CreateTextureEX("絵画像", 1000, Center, Middle, "cg/ev/l/ev449セーフティ外し_l.jpg");
	Move("絵画像", 0, @0, @0, null, true);
	Move("絵画像", 2000, @0, @-30, Dxl1, false);
	Fade("絵画像", 2000, 1000, null, true);

	CreateSE("SE02","se擬音_効果_火花02");
	MusicStart("SE02",0,700,0,1800,null,false);
	CreateTextureEXadd("絵演出", 6000, -169, -136, "cg/ef/efx02火花電光02.jpg");
	Zoom("絵演出", 0, 1500, 1500, null, true);
	FadeFF("絵演出", 30, 1000, 300, 0, 0, Dxl3, false);
	Wait(50);
	CreateSE("SE03","se擬音_効果_火花02");
	MusicStart("SE03",0,700,0,1400,null,false);
	FadeDelete("絵演出", 30, Dxl2, true);

	Wait(500);

	Delete("絵壱枚絵");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9000010a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Clear endures the pain and pulls the knife out of his head&.

Oil runs down his forehead then down to his cheeks&.

It's a heroic act&.&.&. And I can't take my eyes away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵画像", 1000, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/9000020a01">
"Clear&.&.&."

{	Fw("fwクリアα_通常マスクなし_shock");}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9000030b18">
"You&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateSE("SE02","se人体_足音_一歩03");
	MusicStart("SE02",0,800,0,1000,null,false);

	St("C",740, @0,@0,"buクリア_正面崩壊_pride");
	FadeSt("C",500,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9000040a04">
"&.&.&.Now&.&.&. The counter-attack begins&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304122_5_東江タワー東江の間.jpg");
	Request("絵背景", Smoothing);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Smiling&, covered in dripping oil&, Clear sways and stands 
up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_ナイフ_落とす01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
	St("C",740, @0,@0,"buクリア_正面崩壊_serious");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
He throws away the knife&, and rushes after α&, who looks 
as dumbfounded as me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateMovieEX("絵拡動画", 1000, 286, 50, true, true, "dx/mv0003集中線01_白.ngs");
	Zoom("絵拡動画", 0, 3000, 3000, Dxl1, true);

	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);

//覇：トランジ等で疾走感の演出

	Fade("絵拡動画", 0, 1000, null, true);
	Move("絵背景", 600, @0, @100, Dxl1, false);
	Zoom("絵背景", 600, 1500, 1500, Dxl3, false);
	Move("@StNameC/C*", 600, @0, @100, Dxl3, false);
	Zoom("@StNameC/C*", 600, 2000, 2000, Dxl1, false);
	Fade("@StNameC/C*", 200, 0, Axl1, true);
	DeleteSt("C", 0,true);

	Wait(30);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg304121_5_東江タワー東江の間_m.jpg");
	Delete("絵拡動画");

	DrawDelete("絵黒幕", 200, 100, null, "zoom_01_00_1", true);

	Wait(100);

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 100, 1000, Dxl2, true);
	Wait(10);
	FadeDelete("絵色白", 100, Dxl2, true);

	Wait(100);

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 500, 15, 15, 0, 0, 500, null, true);

	St("C",700, @0,@0,"buクリアα_通常マスクなし_pinch");
	Move("@StNameC/C*", 0, @-20, @0, Dxl3, true);
	Move("@StNameC/C*", 150, @20, @0, Dxl2, false);
	FadeSt("C",150,true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9000050b18">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
He must've used overwhelming force&, because α has to 
protect himself with his fists as he almost stumbles to the
ground&.

Clear moves to attack him&, only a hair's breadth away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreateColorEX("絵色黒", 6000, "BLACK");
	CreateColorEX("絵色黒弐", 6001, "BLACK");
	CreateColorEXadd("絵色白", 5000, "WHITE");
	CreatePlainEX("絵板写", 3001);
	CreatePlainEX("絵板写弐", 3000);
	Request("絵板写*", Smoothing);
	Zoom("絵板写", 0, 2500, 2500, null, true);
	Zoom("絵板写弐", 0, 1500, 1500, null, true);
	Move("絵板写弐", 0, @0, @100, null, true);

	$STime=130;
	$STime2=100;

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	MusicStart("SE02",0,700,0,1800,null,false);
	Fade("絵色黒*", 0, 1000, null, true);
	Fade("絵板写弐", 0, 1000, null, true);
	DrawTransition("絵色黒*", $STime, 1000, 0, 100, Dxl2, "cg/data/zzexslide_01_00_0.png", true);
	Wait(200);

	CreateSE("SE01","se戦闘_剣撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色黒*", 0, 1000, null, true);
	Fade("絵板写", 0, 1000, null, true);
	Move("絵板写", 0, -245, 10, null, true);
	DrawTransition("絵色黒弐", $STime2, 1000, 0, 100, Dxl3, "cg/data/circle_06_00_1.png", false);
	DrawTransition("絵色黒", $STime, 1000, 0, 100, Dxl2, "cg/data/circle_06_00_0.png", false);
	Wait($STime2);


	CreateSE("SE01","se戦闘_剣撃_風切り高02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色黒", $STime, 1000, Dxl2, true);
	Move("絵板写", 0, 130, -270, null, true);
	Wait(5);

	DrawTransition("絵色黒弐", $STime2, 1000, 0, 100, Dxl3, "cg/data/circle_07_00_1.png", false);
	DrawTransition("絵色黒", $STime, 1000, 0, 100, Dxl2, "cg/data/circle_07_00_0.png", false);
	Wait($STime2);


	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色黒", $STime2, 1000, Dxl2, true);
	Move("絵板写", 0, -130, 10, null, true);
	Wait(5);

	DrawTransition("絵色黒弐", $STime2, 1000, 0, 100, Dxl2, "cg/data/circle_05_00_1.png", false);
	DrawTransition("絵色黒", $STime, 1000, 0, 100, Dxl2, "cg/data/circle_05_00_0.png", false);
	Wait($STime2);


	CreateSE("SE01","se戦闘_剣撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色黒", $STime, 1000, Dxl2, true);
	Move("絵板写", 0, -245, -270, null, true);
	Wait(5);

	DrawTransition("絵色黒弐", $STime2, 1000, 0, 100, Dxl2, "cg/data/circle_08_00_1.png", false);
	DrawTransition("絵色黒", $STime, 1000, 0, 100, Dxl2, "cg/data/circle_08_00_0.png", false);
	Wait($STime2);


	CreatePlainSP("絵軌跡拡", 3500);


	Zoom("絵軌跡拡", 300, 1200, 2800, Dxl1, false);

	Wait(30);
	CreateSE("SE01","se戦闘_打撃_ヒット高04");
//	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, false);
	DrawTransition("絵色白", 200, 0, 1000, 100, Dxl3, "cg/data/circle_01_00_0.png", true);
	DeleteSt("C", 0,true);
	Delete("絵背景*");
	Delete("絵板写*");
	Delete("絵軌跡拡*");
	FadeDelete("絵色白", 100, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
Clear's method of fighting involves no defense whatsoever&.

As if he has no time left&.&.&. Even I can see that&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateSE("SE跳躍","se戦闘_動作_跳躍高01");
	CreateSE("SE風切","se戦闘_剣撃_風切り高01");
	CreateSE("SEひび","se擬音_精神_ひび01");

	CreateTextureSP("絵霞上", 1100, Center, InBottom, "cg/bg/l/bg304122_5_東江タワー東江の間_l.jpg");
	CreateTextureSP("絵霞下", 1000, Center, InBottom, "cg/bg/l/bg304122_5_東江タワー東江の間_l.jpg");
	CreateTextureEX("絵立絵", 1500, Center, InBottom, "cg/st/l/stクリア_崩壊_normal_l.png");
	CreateTextureEX("絵軌跡", 2000, 0, 0, "cg/ef/efx01剣閃01.jpg");

	CreateColorEX("絵色黒", 1050, "BLACK");
	Fade("絵色黒", 0, 300, null, true);

	Request("絵立絵", Smoothing);
	Zoom("絵軌跡", 0, 4000, 4000, null, true);
	Move("絵立絵", 0, @-500, @0, null, true);
	Rotate("絵軌跡", 0, @0, @0, @-80, null,true);
	Move("絵軌跡", 0, @2020, @-2130, null, true);

	SetShade("絵霞上", LIGHT);
	SetShade("絵霞下", LIGHT);
	Request("絵軌跡", Smoothing);

	$SYSTEM_effect_drop_image = "cg/ef/effi暴露成功_mask11s.png";
	$SYSTEM_effect_drop_dencity = 40;
	$SYSTEM_effect_drop_speed = 30;
	$SYSTEM_effect_drop_swing = 256;
	$SYSTEM_effect_drop_rotate_x= 10;
	$SYSTEM_effect_drop_rotate_y = 10;
	$SYSTEM_effect_drop_rotate_z= 10;
	CreateEffect("絵破片", 1051, 0, 0, 1000, 1000, "Drop");

	SetAlias("絵破片","絵破片");
	Request("絵破片", Smoothing);
	Zoom("絵破片", 0, 2000, 2000, null, true);
	Rotate("絵破片", 0, @0, @0, @60, null,true);

//覇：おまじない
	Wait(16);

	$SYSTEM_effect_drop_image = "cg/ef/effi暴露成功_mask08s.png";
	$SYSTEM_effect_drop_dencity = 20;
	$SYSTEM_effect_drop_rotate_x= 5;
	$SYSTEM_effect_drop_rotate_y = 5;
	$SYSTEM_effect_drop_rotate_z= 10;
	CreateEffect("絵破片弐", 1051, 0, 0, 1000, 1000, "Drop");

	SetAlias("絵破片弐","絵破片弐");
	Request("絵破片弐", Smoothing);
	Zoom("絵破片弐", 0, 2000, 2000, null, true);
	Rotate("絵破片弐", 0, @0, @0, @30, null,true);

	Fade("絵破片", 0, 1000, null, true);
	Move("絵破片", 0, @-300, @0, null, true);
	Fade("絵破片弐", 0, 1000, null, true);
	Move("絵破片弐", 0, @-300, @0, null, true);

	Move("絵立絵", 400, 230, -1076, Axl3, false);
	Move("絵霞*", 400, @100, @0, Axl3, false);
	Zoom("絵立絵", 400, 1800, 1800, Axl3, false);
	Zoom("絵霞*", 400, 1100, 1100, Axl3, false);

	Wait(200);
	Fade("絵立絵", 300, 1000, null, false);

	MusicStart("SE跳躍",0,700,0,1000,null,false);
	FadeDelete("絵板写", 300, Axl1, true);

	SetVolumeEX("SE跳躍", 0, 0, null);
	MusicStart("SE風切",0,700,0,1000,null,false);
	FadeFF("絵軌跡", 100, 1000, 300, @40, @40, Dxl1, true);
	Wait(100);

	Delete("絵立絵");
//	Delete("絵霞上");
	Fade("絵霞上", 0, 0, null, true);
	Wait(50);

	SetVolumeEX("SEひび", 0, 0, null);
	MusicStart("SEひび",0,400,0,1000,null,false);
	Shake("絵霞下", 500, 50, 50, 0, 0, 500, null, false);
	FadeDelete("絵軌跡", 100, null, true);

	Wait(500);
	Fade("絵霞上", 500, 1000, null, true);

	Wait(500);

	Delete("絵色黒");
	Delete("絵破片*");
	Delete("絵霞下");
	Delete("絵立絵");

	FadeDelete("絵霞上", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0087]
As he keeps moving&, parts of Clear's body crumble off everywhere&, and he sometimes stumbles on his feet&.

He's not going to be able to keep moving around like this&.
That means&.&.&. Soon&, Clear will&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵立絵壱", 1000, Center, Middle, "cg/st/m/stクリア_正面崩壊_pinch_m.png");
	CreateTextureEX("絵立絵弐", 1000, Center, 0, "cg/st/m/stクリア_崩壊_normal_m.png");
	CreateTextureSP("絵立背景", 100, Center, 0, "cg/bg/m/bg304122_5_東江タワー東江の間_m.jpg");
	CreateTextureEX("絵演背景", 1300, Center, 0, "cg/bg/l/bg304121_5_東江タワー東江の間_l.jpg");
	CreateTextureEX("絵演立絵", 2000, Center, -50, "cg/st/l/stクリアα_通常マスクなし_shock_l.png");
	CreateTextureEX("絵顔絵", 2000, 242, 0, "cg/fu/fuクリア_崩壊_normal.png");
	CreateTextureEX("絵顔背景", 100, Center, -70, "cg/bg/l/bg304122_5_東江タワー東江の間_l.jpg");

	CreateColorEX("絵色白", 5000, "WHITE");
	CreateMovieEX("絵演動画", 2100, Center, Middle, true, true, "dx/mv0003集中線01_黒.ngs");
	CreateMovieEX("絵顔動画", 3000, Center, Middle, true, true, "dx/mv0003集中線01_白.ngs");
	Rotate("絵演動画", 0, @0, @0, -11, null,true);
	DrawTransition("絵演動画", 1, 0, 300, 800, null, "cg/data/circle_20_00_0.png", true);
	DrawTransition("絵顔動画", 1, 0, 300, 800, null, "cg/data/circle_20_00_0.png", true);

	Request("絵演*", Smoothing);
	Request("絵顔*", Smoothing);
	SetShade("絵演背景", MEDIUM);
	SetShade("絵立背景", MEDIUM);
	SetBlur("絵演立絵", true, 3, 150, 200, false);

	Zoom("絵演動画*", 0, 3500, 3500, null, true);
	Zoom("絵顔動画", 0, 3000, 3000, null, true);
	Move("絵演動画", 0, 240, 310, Dxl1, true);
	Move("絵演背景", 0, @-150, @0, Dxl1, true);
	Move("絵演立絵", 0, @-250, @0, Dxl1, true);
	Move("絵立絵*", 0, @171, @0, null, true);

	Move("絵立背*", 800, @10, @-150, Axl2, false);
	Move("絵立絵*", 800, @50, @-250, Axl2, false);
	FadeDelete("絵板写", 300, Dxl1, true);
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵立絵壱", 200, 0, null, true);
	Fade("絵立絵弐", 200, 1000, null, true);

	Wait(200);

	CreatePlainSP("絵板写", 5000);

	Fade("絵演背景", 0, 1000, null, true);
	Fade("絵演立絵", 0, 1000, null, true);

	CreateSE("SE01","se戦闘_動作_跳躍高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵演背景", 700, @150, @-35, Dxl1, false);
	Move("絵演立絵", 700, @250, @-70, Dxl1, false);
	DrawDelete("絵板写", 500, 300, Dxl2, "beam_03_00_1", false);
	Wait(600);
	SetBlur("絵演立絵", false);

	CreateSE("SE01","se戦闘_剣撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵演動画", 200, 600, Dxl3, false);
	Zoom("絵演背景", 400, 1300, 1300, Dxl2, false);
	Zoom("絵演立絵", 400, 1600, 1600, Dxl3, false);
	Move("絵演背景", 400, -420, -630, Dxl2, false);
	Move("絵演立絵", 400, 350, -950, Dxl2, false);
	Wait(250);
	Fade("絵色白", 100, 1000, Dxl1, true);

	Delete("絵立*");
	Delete("絵演*");

	Fade("絵顔*", 0, 1000, null, true);

	MoveFFP1("@絵顔背景",1300);
	Wait(16);
	MoveFFP2("@絵顔絵",1000);
	Wait(16);

	Zoom("絵顔背景", 210, 1200, 1200, Axl3, false);
	Zoom("絵顔絵", 210, 1300, 1300, Axl3, false);

	Wait(100);
	FadeDelete("絵色白", 100, null, true);
	Fade("絵顔動画", 100, 800, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
The anxiety rises to my head&, and as Clear staggers α 
closes in the distance and kicks him&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：おかしくなさそうなら、ここに後ずさるクリアの演出

	OnBG(10,"bg304122_5_東江タワー東江の間");
	FadeBG(0,true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/m/bg304122_5_東江タワー東江の間_m.jpg");
	CreateTextureEX("絵演出", 6000, Center, Middle, "cg/ef/efbg効果03.jpg");

	Zoom("絵演出", 0, 2500, 2500, null, true);
	Rotate("絵演出", 0, @0, @0, @20, null,true);
	Move("絵演出", 0, @0, @288, null, true);

	Move("絵顔背景", 500, @50, @100, Dxl3, false);
	Move("絵顔絵", 300, @-100, @-200, Dxl3, false);
	Move("絵演出", 900, @-150, @-500, AxlDxl, false);

	Fade("絵顔絵", 100, 0, null, false);
	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se戦闘_動作_跳躍高01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵演出", 300, 1000, null, true);
	Fade("絵背景", 0, 1000, null, true);
	Wait(600);

	MoveFFP1stop();
	MoveFFP2stop();
	Delete("絵顔*");
	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,700,0,1300,null,false);
	DrawDelete("絵演出", 200, 100, Dxl2, "slide_04_01_1", false);

	CreateSE("SE02","se人体_衝撃_転倒01");
	MusicStart("SE02",0,700,0,1300,null,false);
	Shake("絵背景", 500, 50, 50, 0, 0, 500, null, true);

	Wait(300);

	St("C",740, @0,@0,"buクリア_崩壊_normal");

	Move("@StNameC/C*", 0, @-15, @60, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @15, @-30, Axl1, false);
	FadeSt("C",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Clear expertly jumps back to avoid the blow&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリアα_通常マスクなし_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9000060b18">
"&.&.&.Ha&. Your force is amazing&, but it's really nothing too
 special&."

{
	DeleteFw();
	DeleteAllSt(180,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1100,null,false);

	St("C",740, @0,@0,"buクリア_正面崩壊_pinch");
	FadeSt("C",400,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9000070a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
Clear takes painful gasps and scowls at α&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fwクリアα_通常マスクなし_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9000080b18">
"It's all in vain&. But soon you won't be able to move&, you
 know? You're ruined&, both inside and outside&."

{	Fw("fwクリアα_通常マスクなし_pride");}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9000090b18">
"This time I'll make sure to kill you slowly&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("絵板写", 5000);

	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg304121_5_東江タワー東江の間_m.jpg");

	DeleteSt("C", 0,true);

	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,900,null,false);

	FadeDelete("絵板写", 500, null, true);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
α picks up the knife on the ground&, and composedly walks 
towards Clear&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",700, @0,@0,"buクリアα_通常マスクなし_normal");
	CreateSE("SE01","se戦闘_動作_ナイフ構える01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9000100b18">
"I'll take away your free will that you've gained by
 breaking the key lock with the knife that you yourself so
 freely threw away&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/9000110a01">
"Shit! Let me go!! Clear&, run! Hurry!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
Still feeling like I'm in a dream&, I try and shake off 
α２ and call out to Clear&.

{	DeleteSt("C", 200,true);}
And then α approaches Clear with his knife in hand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景弐", 100, Center, Middle, "cg/bg/m/bg304122_5_東江タワー東江の間_m.jpg");
//	Zoom("絵背景弐", 0, 2000, 2000, null, true);
	St("C",740, @0,@0,"buクリア_正面崩壊_serious");
	FadeSt("C",0,true);
	Fade("絵背景", 0, 0, null, true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
Clear&.&.&. isn't moving&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリアα_通常マスクなし_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9000120b18">
"Your fake master looks worried&. Is that okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_正面崩壊_pinch");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9000130a04">
"&.&.&.&.&."

{	Fw("fwクリアα_通常マスクなし_sigh");}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9000140b18">
"So you've finally given up&. Then I'll take you down in one hit&. You're old&, but we're made of the same things&. Don't  worry&, I won't miss&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景弐");
	St("C",740, @0,@0,"st東江_通常_normal2");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【東江】
<voice name="東江" class="東江" src="voice/dm44/9000150b02">
"So now we've arrived at the finale&.&.&. Take him away&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
Toue&, speaking in a tone that suggests he's lost interest&, commands α２ to leave the room and I'm pulled towards the door&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_足音_歩く03");
	MusicStart("SE02",0,700,0,700,null,false);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(50,300,20,0,0,0,1000,null,true);

	SetVolumeEX("SE02", 3000, 0, null);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/9000160a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
Toue begins to walk out&, and α２ pulls me along with even 
more force&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/9000170a01">
"Clear!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);

//	Fade("絵板写", 500, 1000, null, true);

	St("C",700, @0,@0,"buクリアα_通常マスクなし_normal");
	FadeSt("C",0,true);
	Fade("絵背景", 0, 1000, null, true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9000180b18">
"Well then&, this is where we really part&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_打撃_風切り低02");
	MusicStart("SE01",0,500,0,1800,null,false);

	CreatePlainSP("絵板写", 990);
	FadeDelete("絵板写", 100,Dxl3, true);

	CreateTextureEXadd("ef01", 1000, Center, Middle, "cg/ef/efx01剣閃01.jpg");//efx01剣閃01.jpg
	Fade("ef01", 0, 1000, null, true);
	Shake("ef01", 500, 2, 10, 0, 0, 1000, null, false);
	Zoom("ef01", 500, 1600, 1600, Dxl1, false);
	Wait(30);
	FadeDelete("ef01", 350, Axl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
α flashes a cruel smile and raises the knife&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateColorEX("絵色黒", 500, "000000");
	Fade("絵色黒", 0, 300, null, true);
	CreateTextureSP("絵背景弐", 100, -491, 0, "cg/bg/l/bg304122_5_東江タワー東江の間_l.jpg");
	Fade("絵背景弐", 0, 1000, null, true);
	SetShade("絵背景弐", MEDIUM);

	St("C",700, @0,@0,"fuクリア_正面崩壊_serious");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
Clear&.&.&. still won't move&.

Why?
Has he given up like α said?

Why&.&.&.

Why won't he move&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/9000190a01">
"Clear&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵演立絵", 2700, -141, -246, "cg/fu/x/fuクリアα_マスクなし_pride_x02.png");
	Zoom("絵演立絵", 0, 700, 700, null, true);
	Request("絵演立絵", Smoothing);

	CreateTextureSP("絵演背景", 2000, Center, Middle, "cg/bg/l/bg304121_5_東江タワー東江の間_l.jpg");
	SetVertex("絵演立絵", 0, 300);
	SetVertex("絵演背景", 732, 428);
	Request("絵演立絵", Smoothing);

	Move("絵演背景", 0, @-50, @0, null, true);
	Move("絵演立絵", 0, @-100, @0, null, true);

	Move("絵演背景", 1000, @50, @0, Dxl1, false);
	Move("絵演立絵", 1000, @100, @0, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

//	Fw("fwクリアα_通常マスクなし_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9000200b18">
"Bye-bye&, brother&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

/*
	CreateMovieEX("絵動画", 3000, 286, 50, true, true, "dx/mv0003集中線02_白.ngs");
	Zoom("絵動画",0,5000,5000,null,true);
	Move("絵動画", 0, 795, 575, null, true);

//	Fade("絵動画", 500, 800, null, false);

	CreateSE("SE01","se戦闘_剣撃_風切り高02");
	MusicStart("SE01",0,700,0,800,null,false);
	Zoom("絵演立絵", 450, 2000, 2000, Dxl1, false);
	Zoom("絵演立絵", 450, 2000, 2000, Dxl1, false);
	Zoom("絵演背景", 450, 2000, 2000, Dxl2, false);

	Fade("絵動画", 200, 800, Dxl2, false);
	Wait(180);
//	FadeDelete("絵演立絵", 200, Dxl1, false);

	CreateColorSPadd("絵色白", 5000, "WHITE");
//	Fade("絵色白", 200, 1000, Dxl2, false);
	DrawTransition("絵色白", 200, 0, 1000, 80, Dxl3, "cg/data/circle_05_00_0.png", true);

	Delete("絵軌跡");
	Delete("絵背景");
	Delete("絵動画");
	Delete("絵演*");
	DeleteSt("C", 0,true);

	St("C",700, @0,@0,"fuクリア_正面崩壊_serious");
	FadeSt("C",0,true);

	FadeDelete("絵色白", 500, null, true);

	Wait(500);

	St("C",700, @0,@0,"fuクリア_正面崩壊_normal");
	FadeSt("C",500,true);

	Wait(500);
	St("C",700, @0,@0,"fuクリア_正面崩壊_think");
	SetVolumeEX("@dm*", 1500, 0, null);
	FadeSt("C",1500,false);

	Wait(500);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,800,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 1000, 1000, Dxl2, true);
*/

	CreateMovieEX("絵動画", 3000, Center, Middle, true, true, "dx/mv0003集中線01_白.ngs");
	Zoom("絵動画",0,5000,5000,null,true);

	CreateSE("SE01","se戦闘_剣撃_風切り高02");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 2800);

	Zoom("絵板写", 450, 2000, 2000, Dxl1, false);
	Fade("絵動画", 200, 800, Dxl2, false);
	Wait(180);

	CreateColorSPadd("絵色白", 5000, "WHITE");

	Delete("絵軌跡");
	Delete("絵背景");
	Delete("絵動画");
	Delete("絵演*");
	DeleteSt("C", 0,true);
	Delete("絵板写");

	St("C",700, @0,@0,"fuクリア_正面崩壊_serious");
	FadeSt("C",0,true);

	FadeDelete("絵色白", 500, null, true);

	Wait(500);

	St("C",700, @0,@0,"fuクリア_正面崩壊_normal");
	FadeSt("C",500,true);

	Wait(500);
	St("C",700, @0,@0,"fuクリア_正面崩壊_think");
	SetVolumeEX("@dm*", 1500, 0, null);
	FadeSt("C",1500,false);

	Wait(500);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,800,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
And at that moment&.&.&.

Clear spreads out both of his arms&, and breathes in deeply&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEXadd("絵壱枚絵上", 1001, 0, -576, "cg/ev/l/ev940歌うクリア_l.jpg");
	CreateTextureSP("絵壱枚絵", 1000, 0, -576, "cg/ev/l/ev940歌うクリア_l.jpg");

	SetShade("絵壱枚絵上", MEDIUM);

	Delete("絵背景*");
	Delete("絵色黒");

	DeleteSt("C", 0,true);

	SoundPlay("@dm020a",1500,450,true);
	Move("絵壱枚絵*", 12000, @-512, @0, AxlDxl, false);
	Fade("絵色白", 1000, 0, null, true);

	Wait(2000);

	Zoom("絵壱枚絵上", 3000, 1200, 1200, Dxl1, false);
	Move("絵壱枚絵上", 3000, @0, @-100, Dxl1, false);
	Fade("絵壱枚絵上", 1000, 900, null, false);

	Wait(1000);

	Zoom("絵壱枚絵上", 3000, 1500, 1500, Axl1, false);
	Move("絵壱枚絵上", 3000, @0, @-100, Axl1, false);
	Fade("絵壱枚絵上", 1500, 0, null, false);

	Wait(2500);

	Fade("絵色白", 1000, 1000, null, true);

	Zoom("絵壱枚絵上", 0, 1000, 1000, Dxl1, true);
	Move("絵壱枚絵*", 0, -1024, -288, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
His soft voice begins to sing a slow melody&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリアα_通常マスクなし_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9000210b18">
"This is&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵壱枚絵*", 12000, @512, @0, AxlDxl, false);
	Fade("絵色白", 1000, 0, null, true);

	Wait(2000);

	Zoom("絵壱枚絵上", 3000, 1200, 1200, Dxl1, false);
	Move("絵壱枚絵上", 3000, @0, @-100, Dxl1, false);
	Fade("絵壱枚絵上", 1000, 900, null, false);

	Wait(1000);

	Zoom("絵壱枚絵上", 3000, 1500, 1500, Axl1, false);
	Move("絵壱枚絵上", 3000, @0, @-100, Axl1, false);
	Fade("絵壱枚絵上", 1500, 0, null, true);

	Wait(1000);

	Fade("絵色白", 1000, 1000, null, true);

	Delete("絵壱枚*");

	CreateSE("SE01","se戦闘_ナイフ_落とす01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
α steps back in surprise&, and the knife falls from his 
hand&.

α２ stops moving as well&, and crouches over&, groaning in 
pain&.

He lets go of my arms&.

But&.&.&. I'm unable to get closer to Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm020a", 3000, 700, null);

//	CreateTextureEXadd("絵演背景", 1003, -810, -440, "cg/ef/efクリアの歌声_l.jpg");
//	CreateTextureEXadd("絵壱枚絵上", 1001, Center, Middle, "cg/ev/ev940歌うクリア.jpg");
//	CreateTextureSP("絵壱枚絵", 1000, Center, Middle, "cg/ev/ev940歌うクリア.jpg");

	CreateTextureEXadd("絵壱枚絵上", 1001, -141, -14, "cg/ev/l/ev940歌うクリア_l.jpg");
	CreateTextureSP("絵壱枚絵", 1000, -141, -14, "cg/ev/l/ev940歌うクリア_l.jpg");


	SetVertex("絵演背景", 215, 120);

//	Zoom("絵演背景", 0, 1200, 1200, null, true);
	Zoom("絵壱枚絵上", 0, 1250, 1250, null, true);
//	Fade("絵演背景", 0, 1000, null, true);
	Fade("絵壱枚絵上", 0, 600, null, true);

	SetShade("絵壱枚絵上", MEDIUM);

//	Zoom("絵演背景", 2500, 1000, 1000, Dxl1, false);
	Zoom("絵壱枚絵上", 3500, 1000, 1000, Dxl1, false);
//	FadeDelete("絵演背景", 2000, null, false);
	FadeDelete("絵壱枚絵上", 3000, null, false);
	FadeDelete("絵色白", 1500, null, true);

	Wait(2500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0275]
Clear was singing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEXadd("絵壱枚絵上2", 1003, Center, Middle, "cg/ev/ev940歌うクリア.jpg");
	CreateTextureEX("絵壱枚絵2", 1002, Center, Middle, "cg/ev/ev940歌うクリア.jpg");

	Fade("絵壱枚絵2", 500, 1000, null, true);

	Zoom("絵壱枚絵上2", 0, 1000, 1000, Dxl1, true);
	Fade("絵壱枚絵上2", 0, 500, null, true);
	SetShade("絵壱枚絵上2", MEDIUM);
	Zoom("絵壱枚絵上2", 1500, 1100, 1100, null, false);
	FadeDelete("絵壱枚絵上2", 1500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
His singing voice is beautiful&, even now&.&.&. and it 
captivates me&.

It is such a tragic display&, but I can only think of how 
beautiful his singing is&.

Clear's song envelopes me in a certain calmness&, but also 
brings up a sharp pain from the bottom of my heart&. 
It's strange&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm4500.nss"]
//※次ファイル["dm4491.nss"]

}
