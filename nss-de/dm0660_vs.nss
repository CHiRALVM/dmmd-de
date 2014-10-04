//<continuation number="40">
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


scene dm0660_vs.nss_MAIN
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
	#ev066クリア暴力反対=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0660sl.nss";

}


scene dm0660_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	OnBG(10,"bg402031_1_立ち入り禁止区域工場部屋01");
	FadeBG(0,true);

	SetVolumeEX("@dm009", 500, 1, null);

//嶋：色仕込み
	CreateColorSP("絵色001", 1000, "Black");
	CreateColorSPmul("絵色000", 1060, "BLUE");
	CreateColorSP("絵色100", 1200, "Black");
	Fade("絵色100", 0, 300, null, true);
	CreateColorSP("絵色200", 2000, "Black");

	FadeDelete("上背景", 200, null, true);



//==============================================
//※以降、合流
//==============================================

//	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev066クリア暴力反対.jpg");
//coma_01=====================================================//

	CreateTextureEXadd("絵660_00", 1050, 258, -886, "cg/ef/efbg怒りの業火.jpg");
	CreateTextureEXsub("絵660_01", 1300, 108, -73, "cg/ev/l/ev066クリア暴力反対_1クリア_l.png");
	CreateTextureEXadd("絵660_02", 1450, 421, 295, "cg/ev/l/ev066クリア暴力反対_1息1_l.png");
	CreateTextureEXadd("絵660_03", 1450, 169, 339, "cg/ev/l/ev066クリア暴力反対_1息2_l.png");
	CreateTextureEX("絵660_04", 1450, 521, 15, "cg/ev/l/ev066クリア暴力反対_1シュコー_l.png");

	CreateTextureSP("絵660_10", 1100, 110, -74, "cg/ev/l/ev066クリア暴力反対_1クリア_l.png");
	CreateTextureSPmul("絵660_11", 1101, 110, -74, "cg/ev/l/ev066クリア暴力反対_1クリア_l.png");
	CreateTextureSPmul("絵660_12", 1101, 110, -74, "cg/ev/l/ev066クリア暴力反対_1クリア_l.png");

//嶋：音声仮
	CreateVOICEEX("クリア１","dm06/6000010a04","クリア");
	CreateVOICEEX("クリア２","dm06/6000040a04","クリア");
//	CreateVOICEEX("クリア３","dm06/6000030a04","クリア");

	CreateSE("SE01","se物体_東江タワー_地鳴り01aL");
	CreateSE("SE02","se環境_自然_炎01L");
	CreateSE("SE03","se擬音_コミカル_シュコー01");

	Request("絵660_00",smoothing);
	Fade("絵660_00",0,500,null,true);
	SetVertex("絵660_00", center, bottom);
	Zoom("絵660_00", 0, 400, 10, null, true);

	Fade("絵660_01", 500, 800, null, true);

	Zoom("絵660_02", 0, 500, 1, null, true);
	Zoom("絵660_03", 0, 500, 1, null, true);

	MusicStart("SE01",2000,750,0,1000,null,true);


	Fade("絵色200", 1500, 0, AxlAuto, false);
	DrawTransition("絵色200", 1500, 1000, 0, 100, AxlAuto, "cg/data/circle_13_00_0.png", false);


	Fade("絵660_01", 3000, 400, null, true);
	Fade("絵660_01", 3000, 0, null, false);
	Fade("絵660_11", 3500, 0, null, false);
	Fade("絵660_12", 3500, 800, null, false);
	Fade("絵色100", 3500, 0, null, true);

	MusicStart("SE02",2000,450,0,1000,null,true);
//嶋：音声仮
	SetVolume("SE01", 500, 400, null);
	MusicStart("SE03",0,750,0,1000,null,false);

	DrawEffect("絵660_00", 50, "MiddleWave", 0, 50, null);

	Zoom("絵660_00", 3000, 300, 600, Dxl1, false);
	Fade("絵660_00", 1500, 800, null, false);
	Move("絵660_02", 1500, 470, 368, DxlAuto, false);
	Move("絵660_03", 1500, 77, 403, DxlAuto, false);
	Zoom("絵660_02", 50, 1050, 1050, Dxl1, false);
	Zoom("絵660_03", 50, 1050, 1050, Dxl1, false);
	Fade("絵660_02",100,1000,null,false);
	Fade("絵660_03",100,1000,null,false);
	Fade("絵660_04",500,1000,null,false);
	DrawTransition("絵660_04", 2000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);
	Move("絵660_02", 1000, 470, 358, DxlAuto, false);
	Move("絵660_03", 1000, 77, 393, DxlAuto, false);
	Fade("絵660_02",300,0,null,false);
	Fade("絵660_03",300,0,null,true);

	Wait(2000);

	SetVolume("SE01", 1000, 0, null);
	SetVolume("SE02", 1000, 0, null);


	DrawTransition("絵色200", 0, 0, 1000, 100, AxlAuto, "cg/data/circle_13_00_0.png", true);

	Fade("絵色200", 1000, 1000, null, true);
	Delete("絵660_*");
	Delete("絵色000");
	Delete("絵色100");

//coma_02=====================================================//

	CreateColorEX("絵色300", 2000, "Black");


	CreateTextureSP("絵660_10", 1000, 180, -200, "cg/ev/x/ev066クリア暴力反対_2クリア_x2.png");
	CreateTextureEXadd("絵660_11", 1000, 180, -167, "cg/ev/x/ev066クリア暴力反対_2クリア_x2.png");
	CreateTextureEX("絵660_12", 1000, 216, -103, "cg/ev/l/ev066クリア暴力反対_2慢譜_l.png");
	CreateTextureEX("絵660_13", 1500, 762, 80, "cg/ev/l/ev066クリア暴力反対_2ぐっ…_l.png");
	CreateTextureEXadd("絵660_14", 1500, 762, 80, "cg/ev/l/ev066クリア暴力反対_2ぐっ…_l.png");

	CreateMovie("絵ムービー1", 1400, 240, 162, true, true, "dx/mv0003集中線01_白.ngs");
	SetAlias("絵ムービー1","絵ムービー1");
	Request("絵ムービー1", AddRender);
	Zoom("絵ムービー1", 0, 3000, 3000, null, true);
	Fade("絵ムービー1", 0, 0, null, true);


	Request("絵ムービー1", Smoothing);
	Request("絵660_12", Smoothing);
	Request("絵660_13", Smoothing);

	Zoom("絵660_12", 0, 1450, 1450, null, true);
	Zoom("絵660_13", 0, 1500, 1500, null, true);

	Zoom("絵660_11", 0, 750, 750, null, true);
	SetBlur("絵660_11", true, 3, 600, 100, false);

	Zoom("絵660_10", 0, 750, 750, null, true);

	CreateSE("SE01","se人体_動作_絞める01");
	CreateSE("SE02","se戦闘_動作_跳躍低01");

	MusicStart("SE01",0,500,0,1000,null,false);
	Fade("絵色200", 500, 0, null, false);
	Move("絵660_10", 2500, 180, -167, DxlAuto, false);

	Wait(2000);

	//MusicStart("クリア１",0,1000,0,1000,null,false);
	Request("クリア１", Play);
	SetVolume("クリア１", 0, 1000, null);
	Request("クリア１", Disused);

	Wait(1000);

	SetVolume("SE01", 300, 0, null);
	MusicStart("SE02",0,800,0,1000,null,false);
	Fade("絵660_11", 0, 1000, null, true);
	Fade("絵660_13", 0, 1000, Dxl1, false);
	Fade("絵660_14", 0, 1000, Dxl1, false);
	Fade("絵ムービー1", 100, 1000, null, false);
	Zoom("絵ムービー1", 1000, 3500, 3500, null, false);
	Zoom("絵660_10", 150, 1000, 1000, Dxl2, false);
	Zoom("絵660_11", 300, 5000, 5000, Dxl1, false);
	Zoom("絵660_12", 150, 1550, 1550, null, false);
	Zoom("絵660_14", 200, 3000, 3000, null, false);
	Fade("絵660_12", 150, 1000, Dxl1, false);
	Fade("絵660_14", 150, 0, Dxl1, false);
	Shake("絵660_10", 300, 5, 10, 0, 0, 1000, null, false);
	Shake("絵660_12", 300, 10, 3, 0, 0, 800, null, false);
	Fade("絵660_13", 100, 1000, Dxl1, false);
	Fade("絵660_11", 200, 0, Dxl1, true);
	Fade("絵ムービー1", 200, 0, null, false);


	WaitKey(3000);

	Fade("絵色300", 0, 1000, null, false);
	DrawTransition("絵色300", 400, 0, 1000, 200, Dxl1, "cg/data/slide_03_01_0.png", true);

	Delete("@絵ムービー1");
	Delete("@絵660_*");
	Delete("絵色200");

//coma_03=====================================================//

	CreateWindow("絵窓", 150, 0, 100, 1024, 376, false);
	SetAlias("絵窓","絵窓");
	CreateTextureSP("絵窓/絵660_20", 1100, 0, 100, "cg/ev/l/ev066クリア暴力反対_3背景_l.png");//一番奥
	CreateTextureSP("絵窓/絵660_21", 1100, 335, 160, "cg/ev/l/ev066クリア暴力反対_3モルヒネ2_l.png");//一番奥
	CreateTextureSP("絵窓/絵660_22", 1100, 672, 70, "cg/ev/l/ev066クリア暴力反対_3モルヒネ1_l.png");//二番手
	CreateTextureSP("絵窓/絵660_23", 1100, 0, 68, "cg/ev/l/ev066クリア暴力反対_3モルヒネ3_l.png");//手前
	CreateTextureSP("絵窓/絵660_24", 1100, -2, -59, "cg/ev/l/ev066クリア暴力反対_3！_l.png");//手前
	CreateTextureSP("絵窓/絵660_30", 1100, 0, -183, "cg/mask/ciライン_00_00z.png");
	CreateTextureSP("絵窓/絵660_31", 1100, 0, 185, "cg/mask/ciライン_00_00z.png");

	CreateSE("SE10","se戦闘_動作_跳躍高01");

	Request("絵窓/絵660_2*", Smoothing);

	Move("絵窓/絵660_21", 0, @0, 500, null, false);
	Move("絵窓/絵660_22", 0, 1050, @0, null, false);
	Move("絵窓/絵660_23", 0, -500, @0, null, true);

	Zoom("絵窓", 0, 1000, 0, null, true);
	Move("絵窓/絵660_30", 0, @0, 0, null, true);
	Move("絵窓/絵660_31", 0, @0, 0, null, true);

	Fade("絵窓/絵660_24", 0, 0, null, true);

	Fade("絵色300", 0, 0, null, true);
	DrawTransition("絵色300", 0, 0, 0, 50, null, "cg/data/circle_01_00_0.png", true);

	Move("絵窓/絵660_30", 200, @0, -183, null, false);
	Move("絵窓/絵660_31", 200, @0, 185, null, false);
	Zoom("絵窓", 200, 1000, 1000, null, false);

	Wait(100);

	MusicStart("SE10",0,1000,0,1000,null,false);
	Move("絵窓/絵660_23", 75, 0, @0, Dxl1, true);

	Move("絵窓/絵660_22", 75, 672, @0, Dxl1, true);

	Shake("絵窓/絵660_24", 300, 4, 20, 0, 0, 500, Dxl1, false);
	Fade("絵窓/絵660_24", 300, 1000, null, false);
	Move("絵窓/絵660_21", 75, @0, 160, Dxl1, true);

	WaitKey(1000);

	CreateSE("SE01","se戦闘_剣撃_風切り高02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵色300", 0, 1000, null, false);
	DrawTransition("絵色300", 300, 0, 1000, 50, null, "cg/data/circle_01_00_0.png", true);

	Delete("@絵窓");
	Delete("@絵窓/絵660_*");
	Delete("@絵上");

//coma_04=====================================================//

	CreateColorSP("絵色200", 1600, "Black");


	CreateTextureSP("絵660_1000", 1500, -85, -529, "cg/ev/l/ev066クリア暴力反対_l.jpg");
	CreateTextureSP("絵660_1001", 1450, 0, -354, "cg/ev/m/ev066クリア暴力反対_m.jpg");

	CreateTextureSP("絵660_10", 1800, Center, Middle, "cg/ev/l/ev066クリア暴力反対_4クリア_l.png");
	Move("絵660_10", 0, 715, -187, null, true);

	CreateTextureSP("絵660_20", 1700, Center, Middle, "cg/ev/l/ev066クリア暴力反対_4モルヒネ_l.png");
	Request("絵660_20", Smoothing);

	CreateSE("SE01","se擬音_打撃_ギャグヒット01");


	Move("絵660_20", 0, 422, 14, null, true);

	CreateTextureSP("絵660_30", 1900, 449, 37, "cg/ev/l/ev066クリア暴力反対_4ポコッ_l.png");

//嶋：音声借入
	//MusicStart("クリア２",0,1000,0,1000,null,false);
	Request("クリア２", Play);
	SetVolume("クリア２", 0, 1000, null);
	Request("クリア２", Disused);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵色300", 300, 0, null, false);

	Move("絵660_10", 150, 536, -62, Dxl1, false);
	Shake("絵660_20", 200, 10, 5, 0, 0, 500, null, false);
	Move("絵660_20", 4000, -69, -69, DxlAuto, true);

//	Wait(500);

	Fade("絵色200", 1000, 0, null, true);


	Delete("絵660_10");
	Delete("絵660_20");
	Delete("絵660_30");

	Move("絵660_1000", 400, @-200, @-20, null, false);
	Zoom("絵660_1000", 400, 750, 750, null, false);
	Fade("絵660_1000", 300, 0, null, true);

	Wait(1000);

//嶋：次画像定義位置
	CreateTextureEX("絵ＥＶ１", 5000, Center, -50, "cg/ev/ev066クリア暴力反対.jpg");
	Fade("絵ＥＶ１",300,1000,null,true);

	Delete("絵660_*");
	Delete("絵色001");
	Delete("絵色200");
	Delete("絵色300");

/*================================================================
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/6000010a04">
"Please&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/6000020a04">
"Stop&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/6000030a04">
"With the violence!"

//（※別案用：演出に合わせて好きな方を使ってください）
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/6000040a04">
"Please stooooop!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
================================================================*/


//※ＳＥ：ぼかっ
	//CreateSE("SE01","ＳＥダミー");//あきゅん「ＳＥ：se擬音_打撃_ギャグヒット01」
//	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetBacklog("「暴力は！」", "voice/dm06/6000010a04", クリア);
	SetBacklog("「やめてくださーーーい！！」", "voice/dm06/6000040a04", クリア);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The black-clothed man ate Clear's punch and fell down to 
the ground&.


{	SetVolumeEX("@dm009", 500, 450, null);
	FadeDelete("絵ＥＶ１", 300, null, true);}
&.&.&.&.&.

&.&.&.Well&, that's how it's going to be&.

{
	SoundPlay("@dm009",0,450,true);
}
These guys are kind of weird&.

None of them have said anything since we came in&.

All they've done is pursue and attack us with blank 
expressions the whole time&.

And the one I just saw had doll-like eyes&.&.&.

All their concern turned to the other way&, I saw Koujaku 
fighting with a hoard of those black-clothed goons&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0660sl.nss"]

}
