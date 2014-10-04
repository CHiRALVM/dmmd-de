//<continuation number="460">
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


scene dm2460ed.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
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
	$GameName = "dm9999.nss";


	//★エンドロール
	PreSetRoll(3);
	TheEND(3);

#BDED2f=1;//ノイズファミコンバッドエンドフラグ取得

}


scene dm2460ed.nss
{

//徒歩十分様召喚用
	$SYSTEM_text_auto = false;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;

	//$SYSTEM_menu_lock = true;
	$SYSTEM_skip_lock=true;
	$SYSTEM_text_erase_lock=true;
	$SYSTEM_backlog_lock=true;
	$SYSTEM_backlog_lock_a=true;
	$SYSTEM_super_lock=true;
	$LOCAL_extra_lock=true;
	$SYSTEM_load_lock=true;
	$SYSTEM_save_lock=true;
	$SYSTEM_backselect_lock=true;
	$SYSTEM_tips_lock=true;
	$SYSTEM_config_lock=true;


	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――




	PrintBG("上背景", 30000);

	CreateWindowEX("絵窓", 256, 64, 512, 448, false);
	CreateTextureEX("絵平凡内", 100, 256, 64, "cg/sys/ed/dot/mp_平凡.png");
	Fade("絵平凡内", 0, 1000, null, true);

	Dot_Cara_Set(1000);
	Dot_Cara_Fade("蒼葉","下",14,6);
	Fami_Text_Load();
	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");

	SoundPlay("@dm8bit001",0,450,true);
	FadeDelete("上背景", 1000, null, true);

	Wait(300);


	Fade("@famitextbox", 100, 1000, null, true);




//【蒼葉】
//「Yes, thank you for calling
//　ありがとうございます」
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","T","H","A","N","K","S");
	Fami_Text_Fade02F(2,"＿","F","O","R","＿",0);
	Fami_Text_Fade02S("C","A","L","L","I","N","G","」",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

//【蒼葉】
//「This is Junk
//　Shop Heibon」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade03F(3,"「","T","H","I","S"," ","I","S");
	Fami_Text_Fade03S(0,0,0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(1);
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade04F(3,"J","U","N","K","S","H","O","P");
	Fami_Text_Fade04S(" ","H","E","I","B","O","N","」",0,0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(2);

	Fami_Text_End();
	WaitKey();


//【蒼葉】
//「Yes」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(3,0,5,"「","Y","E","S","」",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(3);
	Fami_Text_Scroll(4);

	Fami_Text_End();
	WaitKey();


//【蒼葉】
//「I'm onto it」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade02F(2,"「","I","M"," ","O","N","T","O");
	Fami_Text_Fade02S(" ","I","T","」",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(1);

	Fami_Text_End();
	WaitKey();


//【蒼葉】
//「Would you like to order?」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade03F(2,"「","W","O","U","L","D","＿");
	Fami_Text_Fade03S("Y","O","U","＿","L","I","K","E",0);
	//Fami_Text_Fade03S("＿",0,0,0,0,0,0,0,0);
	Fami_Text_Scroll(2);
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade02F(2,0,8,"T","O",0);
	Fami_Text_Fade02S("＿","O","R","D","E","R","？","」",0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(4);

	Fami_Text_End();
	WaitKey();

//【蒼葉】
//「はい　わかりました　それではGot it
//　おきゃくさまの　こじんでーたをif you
//　おおくりください」could send us your data
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade04F(2,"「","G","O","T","＿","I","T","．");
	Fami_Text_Fade04S("I","F","＿","Y","O","U",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(3);
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(2,0,5,"＿","C","O","U","L","D",0,0);
	Fami_Text_Fade01S("＿","S","E","N","D","＿","U","S",0);
	Fami_Text_Fade02F(3,"＿","Y","O","U","R","＿","D","A");
	Fami_Text_Fade02S("T","A","」",0,0,0,0,0,0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();



//―――――――――――――――――――――――――――


	Delete("@fami*");
	Delete("@window_fami/f*");

//※ピッ、ピピッみたいな個人データ受信完了
	Wait(500);
	CreateSE("SE01","se8bit_通常_コイル01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(100);
	CreateSE("SE02","se8bit_通常_コイル01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(1000);

	CreateSE("SE01","se8bit_通常_コイル02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――


//【蒼葉】
//「……Yes
//　thanks dawg！」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","…","Y","E","S",0,0,0);
	Fami_Text_Fade02F(2,"＿","T","H","A","N","K",0,0);
	Fami_Text_Fade02S("＿","Y","O","U","！","」",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();


//【蒼葉】
//「それでは　こんごともplease use us again soon
//　とうてんを　ごひいきに～」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade03F(3,"「","P","L","E","A","S","E",0);
	Fami_Text_Fade03S("＿","U","S","E","＿","U","S",0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(1);
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade04F(3,"＿","A","G","A","I","N",0,0);
	Fami_Text_Fade04S("＿","S","O","O","N","」",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(2);

	Fami_Text_End();
	WaitKey();




	Delete("@fami*");
	Delete("@window_fami/f*");

	Wait(500);
	CreateSE("SE01","se8bit_通常_コイル01");
	MusicStart("SE01",0,700,0,1000,null,false);
//※ＳＥ：ぴっと受話器を切る音
	Wait(1000);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);



//【蒼葉】
//「……ふぅ」
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","…","…","P","H","E","W","」");
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();


//【蒼葉】
//「そろそろ　てんちょうがwill the manager be here soon. MISSING E
//　かえってくるころかな？」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade02F(2,"「","T","H","E","＿","M","A","N");
	Fami_Text_Fade02S("A","G","E","R","…","…");
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(1);
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade03F(2,"＿","W","I","L","L","＿","H","E");
	Fami_Text_Fade03S("＿","B","E","＿","H","E","R","E");
	Fami_Text_Fade04F(3,"＿","S","O","O","N","？","」",0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

//※がちゃっとドアを開けてノイズが入ってくる

//―――――――――――――――――――――――――――

	Delete("@fami*");
	Delete("@window_fami/f*");


	Wait(1000);
	CreateSE("SE01","se8bit_通常_開く_b");
	MusicStart("SE01",0,700,0,1000,null,false);
	Dot_Cara_Fade("ノイズ","上",15,12);
	Wait(1500);
	Dot_Cara_Move("ノイズ","上",1,true);
	Dot_Cara_Move("ノイズ","左",1,true);
	Dot_Cara_Move("ノイズ","上",3,true);
	Wait(500);


	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――

//【ノイズ】
//「よぉ」hey dumbass
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","Y","O","」",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");

//【蒼葉】
//「おまえ……　ノイズ！」noiz!!!
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","Y","O","U","…","…","…","N");
	Fami_Text_Fade01S("O","I","Z","！","」",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();


//【蒼葉】
//「みせまできて　なんのようだよ」what do you want
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade02F(2,"「","W","H","A","D","Y","A","＿");
	Fami_Text_Fade02S("W","A","N","T","？","」",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(1);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");

//【ノイズ】
//「おれの　チームに　はいれよ」join my team
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","J","O","I","N","＿","M","Y");
	Fami_Text_Fade01S("＿","T","E","A","M","」",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");

//【蒼葉】
//「ライムだろ？　いやだよ」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","R","H","Y","M","E","？","＿");
	Fami_Text_Fade01S("N","O","＿","W","A","Y","」",0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");

//【ノイズ】
//「……ちっ」CH!
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","…","C","H","K","」",0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

//※ノイズ、カウンターを乗り越える。
//蒼葉の上に馬乗りになる。
//―――――――――――――――――――――――――――

	Delete("@fami*");
	Delete("@window_fami/f*");

	CreateSE("SE01","se8bit_通常_跳躍");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@ファミキャラ01ノイズ*", 300, @0, 208, Dxl1, false);
	Move("@ファミキャラ02ノイズ*", 300, @0, 208, Dxl1, false);
	Wait(400);
	CreateSE("SE01","se8bit_通常_ぶつかる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@ファミキャラ01蒼葉*", 150, @0, 176, Dxl1, false);
	Move("@ファミキャラ02蒼葉*", 150, @0, 176, Dxl1, false);
	Wait(300);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――



//【蒼葉】
//「な……っ！　どけよ！」Wah move!
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","W","H","A","…","…","M","O");
	Fami_Text_Fade01S("V","E","！","」",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");

//【ノイズ】
//「チーム　に　はいれ」join my team
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","J","O","I","N","＿","M","Y");
	Fami_Text_Fade01S("＿","T","E","A","M","」",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");

//【蒼葉】
//「"いやだって……　！？」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","I","＿","S","A","I","D","…");
	Fami_Text_Fade01S("…","N","O","！","」",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

//―――――――――――――――――――――――――――
	Delete("@fami*");
	Delete("@window_fami/f*");

	Move("@ファミキャラ01ノイズ*", 500, @0, @-32, Dxl1, false);
	Move("@ファミキャラ02ノイズ*", 500, @0, @-32, Dxl1, false);
	Wait(500);
	CreateSE("SE01","se8bit_通常_キス");
	MusicStart("SE01",0,700,0,1500,null,false);
	Wait(1000);

	CreatePlainSP("絵板写", 5000);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――

//【ノイズ】
//「…………」
	CreateSE("SE01","se8bit_通常_会話_200L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,200,5,"「","…","…","…","…","」",0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");

//【蒼葉】
//「ん　む……！」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","M","N","N","…","…","！","」");
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");


	Dot_Cara_Fade("ノイズ","下",0,0);
	Dot_Cara_Fade("悪島","上",15,12);
	CreateSE("SE01","se8bit_戦闘_つかむ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵板写", 200, 15, 5, 0, 0, 500, Dxl1, false);
	FadeDelete("絵板写", 200, null, false);

	Move("@ファミキャラ01ノイズ*", 200, @32, @0, Dxl1, false);
	Move("@ファミキャラ02ノイズ*", 200, @32, @0, Dxl1, false);
	Wait(1000);
	Dot_Cara_Move("悪島","上",1,true);
	Dot_Cara_Move("悪島","左",1,true);
	Dot_Cara_Move("悪島","上",3,true);
	Wait(500);


	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);


//※↑キスされてます。蒼葉じたばた

//※ばたーんとドアを開けて悪島登場


//【悪島】
//「みつけたぞ！found you dipshits
//　このテロリストどもー！！」huehuehuehuehuheeee
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","H","A","！","＿","F","O","U");
	Fami_Text_Fade01S("N","D",0,0,0,0,0,0);
	Fami_Text_Fade02F(2,"＿","Y","O","U","＿","T","E","R");
	Fami_Text_Fade02S("R","O","R","I","S","T","S","！","」");
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@window_fami/f*");


//【蒼葉】
//「！」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","！","」",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

//―――――――――――――――――――――――――――
	Delete("@window_fami/f*");


//――――――――――――――――――――――――――――――――――――――


//【ノイズ】
//「うぜぇのがきたな」a noisy one's here
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","A","＿","N","O","I","S","Y");
	Fami_Text_Fade01S("＿","O","N","E","＿","I","S","＿",0);
	Fami_Text_Fade02F(2,"＿","H","E","R","E","…","」",0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");


//【悪島】
//「たいほしてやるー！！」end of the quote dont show gay ass thng
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話b_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","Y","O","U","R","E","＿","U");
	Fami_Text_Fade01S("N","D","E","R",0,0,0,0,0);
	Fami_Text_Fade02F(2,"＿","A","R","R","E","S","T","！","」");
	Fami_Text_Fade02S("」",0,0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();

	Delete("@fami*");
	Delete("@window_fami/f*");

	CreateSE("SE01","se8bit_通常_跳躍");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@ファミキャラ01悪島*", 600, @0, @-64, Dxl1, false);
	Move("@ファミキャラ02悪島*", 600, @0, @-64, Dxl1, false);
	Wait(650);


	SetVolumeEX("@dm*", 0, 0, null);
	CreateSE("SE01","se8bit_戦闘_エンカウント");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateWindowEX("絵窓", 256, 64, 512, 448, false);
	CreateColorSP("絵窓/絵色白", 50000, "WHITE");
	Fade("絵窓/絵色白", 50, 0, null, true);
	Wait(100);
	Fade("絵窓/絵色白", 50, 1000, null, true);
	Fade("絵窓/絵色白", 50, 0, null, true);
	Wait(100);
	Fade("絵窓/絵色白", 50, 1000, null, true);
	Fade("絵窓/絵色白", 50, 0, null, true);
	Wait(100);

	CreateTextureSP("絵背景", 5000, Center, Middle, "cg/sys/ed/dot/mp_戦闘.png");
	DrawTransition("絵背景", 1000, 0, 1000, 10, Dxl1, "cg/data/mosaic_01_00_0.png", true);

	Wait(1000);

	CreateTextureEX("絵悪島01", 7000, Center, Middle, "cg/sys/ed/dot/dm_8悪島_1正面00.png");
	Request("絵悪島*", Smoothing);
	Move("絵悪島*", 0, @0, @-30, null, true);

	Fade("絵悪島*", 300, 1000, null, true);

	SoundPlay("@dm8bit009",0,450,true);


	Wait(500);


	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);

//※エンカウント／戦闘


//あくしまが　あらわれた！A wild Akushima has appeared!
	Fami_Text_Fade01F(1,0,2,"A","＿","W","I","L","D","＿","A");
	Fami_Text_Fade01S("K","U","S","H","I","M","A","＿",0);
	Fami_Text_Fade02F("A","A","P","P","E","A","R","S","！");

	WaitKey();

	Wait(500);

	Delete("@window_fami/f*");

//あおばの　こうげき！
//あくしまに　１０のダメージ！
	CreateSE("SE01","se8bit_戦闘_攻撃決定");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fami_Text_Fade01F(1,0,2,"A","O","B","A","＿","A","T","T");
	Fami_Text_Fade01S("A","C","K","S","！",0,0,0,0);

	WaitKey();
	Wait(500);

	CreateSE("SE01","se8bit_戦闘_ダメージ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵悪島*", 10, 0, null, true);
	Fade("絵悪島*", 10, 1000, null, true);
	Fade("絵悪島*", 10, 0, null, true);
	Fade("絵悪島*", 10, 1000, null, true);

	Wait(200);


	Fami_Text_Fade02F(2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade02S("＿","R","E","C","E","I","V","E","D");
	Fami_Text_Fade03F("＿","１","０","＿","D","A","M","A","G");
	Fami_Text_Fade03S("E","！",0,0,0,0,0,0);


	WaitKey();
	Delete("@window_fami/f*");


//ノイズは　キューブブロックを
//なげつけた！
//あくしまに　２０のダメージ！
	CreateSE("SE01","se8bit_戦闘_攻撃決定");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fami_Text_Fade01F(1,0,2,"N","O","I","Z","＿","T","H","R");
	Fami_Text_Fade01S("O","W","S","＿","H","I","S",0,0);
	Fami_Text_Fade02F(2,"C","U","B","E","＿","B","L","O","C");
	Fami_Text_Fade02S("C","K","！",0,0,0,0,0,0);

	WaitKey();
	Wait(500);

	CreateSE("SE01","se8bit_戦闘_ダメージ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵悪島*", 10, 0, null, true);
	Fade("絵悪島*", 10, 1000, null, true);
	Fade("絵悪島*", 10, 0, null, true);
	Fade("絵悪島*", 10, 1000, null, true);

	Wait(200);


	Fami_Text_Fade03F(3,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade03S("＿","R","E","C","E","I","V","E","D");
	Fami_Text_Fade04F("＿","２","０","＿","D","A","M","A","G");
	Fami_Text_Fade04S("E","！",0,0,0,0,0,0);

//―――――――――――――――――――――――――――

	WaitKey();
	Delete("@window_fami/f*");

//――――――――――――――――――――――――――――――――――――――

//あくしまは　メガホンで　さけんだ！akushima uses megaphone
//「あ゛ーーーーーーー！！！！」MIND YA EARS BITCHES
	CreateSE("SE01","se8bit_戦闘_悪島の攻撃");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade02F("＿","U","S","E","S","＿","M","E","G");
	Fami_Text_Fade02S("A","P","H","O","N","E",0,0,0);
	Fami_Text_Fade03F(3,"「","A","A","A","H","H");
	Fami_Text_Fade03S("H","！","！","！","！","」",0,0,0);

	Wait(1000);
	SetVolumeEX("SE*", 0, 0, null);

	CreatePlainSP("絵板写", 35000);
	CreateSE("SE01","se8bit_戦闘_ダメージ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵板写", 500, 20, 30, 0, 0, 500, Dxl1, false);
	Wait(300);
	Delete("絵板写");
	Wait(300);
	Delete("@window_fami/f*");


//あおばに　１０のダメージ！aoba takes 10 dmg pts
//ノイズに　８のダメージ！noiz takes 8 dmg pts
	Fami_Text_Fade01F(1,0,2,"A","O","B","A",0,0,0,0);
	Fami_Text_Fade01S("＿","R","E","C","E","I","V","E","D");
	Fami_Text_Fade02F("＿","１","０","＿","D","A","M","A","G");
	Fami_Text_Fade02S("E","！",0,0,0,0,0,0);
	WaitKey();

	Fami_Text_Fade03F(3,"N","O","I","Z","＿","R","E","C");
	Fami_Text_Fade03S("E","I","V","E","D",0,0,0,0);
	Fami_Text_Fade04F("＿","８","＿","D","A","M","A","G","E");
	Fami_Text_Fade04S("！",0,0,0,0,0,0,0);

	WaitKey();
	Wait(500);
	Delete("@window_fami/f*");

//あおばは　れんを　けしかけた！aoba uses ren
//れんが　あくしまに　かみついた！ren bit akushima
//１５のダメージ！aku takes 15 dmg pts
	CreateSE("SE01","se8bit_戦闘_攻撃決定");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fami_Text_Fade01F(1,0,2,"A","O","B","A","＿","U","S","E");
	Fami_Text_Fade01S("S","＿","R","E","N","！",0,0,0);

	WaitKey();
	CreateSE("SE01","se8bit_戦闘_つかむ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(50);
	CreateSE("SE02","se8bit_戦闘_つかむ");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(500);


	Fami_Text_Fade02F(2,"R","E","N","＿","B","I","T","＿");
	Fami_Text_Fade02S("A","K","U","S","H","I","M","A","！");

	WaitKey();
	CreateSE("SE01","se8bit_戦闘_ダメージ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵悪島*", 10, 0, null, true);
	Fade("絵悪島*", 10, 1000, null, true);
	Fade("絵悪島*", 10, 0, null, true);
	Fade("絵悪島*", 10, 1000, null, true);

	Wait(200);

	Fami_Text_Fade03F(3,"１","５","＿","D","A","M","A","G");
	Fami_Text_Fade03S("E","！",0,0,0,0,0,0);


	WaitKey();
	Delete("@window_fami/f*");


//ノイズは　あくたいを　ついた！noiz curses
//あくしまの　akushima's
//ぼうぎょりょくが　さがった！defense falls

	CreateSE("SE01","se8bit_戦闘_ノイズ呪文詠唱");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵窓/絵色白", 50000, "WHITE");
	Fade("絵窓/絵色白", 25, 0, null, true);
	Wait(50);
	Fade("絵窓/絵色白", 25, 1000, null, true);
	Fade("絵窓/絵色白", 25, 0, null, true);
	Wait(50);
	Fade("絵窓/絵色白", 25, 1000, null, true);
	Fade("絵窓/絵色白", 25, 0, null, true);
	Wait(50);

	Fami_Text_Fade01F(1,0,2,"N","O","I","Z","＿","C","U","R");
	Fami_Text_Fade01S("S","E","S","！",0,0,0,0,0);

	WaitKey();
	CreateSE("SE01","se8bit_戦闘_防御低下");
	MusicStart("SE01",0,700,0,800,null,false);
	Wait(1000);

	Fami_Text_Fade02F(2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade02S("S","＿","D","E","F","E","N","S","E");
	Fami_Text_Fade03F("＿","F","A","L","L","S","！",0);


	WaitKey();
	Delete("@window_fami/f*");

//あくしまは akushima 
//メガホンを　なげつけた！throws his megaphone
//しかし　but
//ノイズは　かろやかに　かわした！ noiz dodges
	CreateSE("SE01","se8bit_戦闘_攻撃決定");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fami_Text_Fade01F(1,0,2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade01S("＿","T","H","R","O","W","S","＿",0);
	Fami_Text_Fade02F("＿","H","I","S","＿","M","E","G");
	Fami_Text_Fade02S("A","P","H","O","N","E",0,0,0);

	WaitKey();
	CreateSE("SE01","se8bit_戦闘_回避");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);

	Fami_Text_Fade03F(3,"B","U","T","＿"0,0,0,0);
	Fami_Text_Fade04F(4,"N","O","I","Z","＿","D","O","D");
	Fami_Text_Fade04S("G","E","S","！",0,0,0,0,0);


	WaitKey();
	Delete("@window_fami/f*");
	CreateSE("SE01","se8bit_戦闘_防御低下");
	MusicStart("SE01",0,700,0,1200,null,false);
	Wait(1000);

//あくしまの Akushima's offense
//こうげきりょくが　１０さがった！falls by 10
	Fami_Text_Fade01F(1,0,2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade01S("S","＿","O","F","F","E","N","S","E");
	Fami_Text_Fade02F("＿","F","A","L","L","S","＿",0);
	Fami_Text_Fade02S("B","Y","＿","１","０","！",0,0,0);
	

	WaitKey();
	Wait(500);
	Delete("@window_fami/f*");


//あおばは　けりを　はなった！aoba uses kick
//あくしまに　１５のダメージ！does a measly 15 dmg
	CreateSE("SE01","se8bit_戦闘_回避");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fami_Text_Fade01F(1,0,2,"A","O","B","A","＿","U","S","E");
	Fami_Text_Fade01S("S","＿","K","I","C","K","！",0,0);

	WaitKey();
	CreateSE("SE01","se8bit_戦闘_ダメージ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵悪島*", 10, 0, null, true);
	Fade("絵悪島*", 10, 1000, null, true);
	Fade("絵悪島*", 10, 0, null, true);
	Fade("絵悪島*", 10, 1000, null, true);

	Wait(200);

	Fami_Text_Fade02F(2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade02S("＿","R","E","C","E","I","V","E","D");
	Fami_Text_Fade03F("＿","１","５","＿","D","A","M","A","G");
	Fami_Text_Fade03S("E","！",0,0,0,0,0,0);


	WaitKey();
	Delete("@window_fami/f*");


//ノイズは　ナックルを　なげつけた！noiz uses knuckle punch
//ヒット！it hits
//あくしまに　５０の　ダメージ！50 fucking dmg
	CreateSE("SE01","se8bit_戦闘_回避");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fami_Text_Fade01F(1,0,2,"N","O","I","Z","＿","U","S","E");
	Fami_Text_Fade01S("S","＿","K","N","U","C","K","L","E");
	Fami_Text_Fade02F("＿","P","U","N","C","H","！",0,0);

	WaitKey();
	CreateSE("SE01","se8bit_戦闘_ダメージ");
	MusicStart("SE01",0,700,0,1500,null,false);
	Wait(50);
	CreateSE("SE02","se8bit_戦闘_ダメージ");
	MusicStart("SE02",0,700,0,1500,null,false);
	Wait(100);
	CreateSE("SE03","se8bit_戦闘_ダメージ");
	MusicStart("SE03",0,700,0,1500,null,false);
	Wait(100);
	CreateSE("SE04","se8bit_戦闘_ダメージ");
	MusicStart("SE04",0,700,0,2000,null,false);
	Fade("絵悪島*", 10, 0, null, true);
	Fade("絵悪島*", 10, 1000, null, true);
	Fade("絵悪島*", 10, 0, null, true);
	Fade("絵悪島*", 10, 1000, null, true);

	Wait(200);
	
	Delete("@window_fami/f*");

	Fami_Text_Fade01F(1,0,2,"I","T","＿","H","I","T","S","！");

	WaitKey();

	Fami_Text_Fade02F(2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade02S("＿","R","E","C","E","I","V","E","D");
	Fami_Text_Fade03F("＿","５","０","＿","D","A","M","A","G");
	Fami_Text_Fade03S("E","！",0,0,0,0,0,0);
	Wait(500);

	Delete("絵悪島*");

	SetVolumeEX("@dm*", 0, 0, null);
	CreateSE("SE01","se8bit_戦闘_結果音");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(2000);

	Delete("@window_fami/f*");

//あくしまは　たおれた！Akushima faints
	Fami_Text_Fade01F(1,0,2,"A","K","U","S","H","I","M","A");
	Fami_Text_Fade01S("＿","F","A","I","N","T","S","！",0);


	WaitKey();
	Delete("@window_fami/f*");


//あおばたちは　levelup
//１４６のけいけんちを　てにいれた！
	Fami_Text_Fade01F(1,0,2,"A","O","B","A","＿","ぁ","＿","N");
	Fami_Text_Fade01S("O","I","Z","＿","G","A","I","N");
	Fami_Text_Fade02F(2,"１","４","６","_","E","X","P");
	Fami_Text_Fade02S("_","P","O","I","N","T","S","！");


	Wait(1000);

	CreateSE("SE01","se8bit_戦闘_レベルアップ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(2000);

//あおばは　レベルが　あがった！
//こうげきりょくが　３　あがった！
//すばやさが　４　あがった！
//たいりょくが　２　あがった！
//「ましょうのこえ」の
//レベルが　あがった！
	Fami_Text_Fade03F(3,"A","O","B","A","＿","L","E","V");
	Fami_Text_Fade03S("E","L","E","D","＿","U","P","！",0);

	Fami_Text_End();

	WaitKey();
	CreateSE("SE01","se8bit_通常_選択");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_End_Delete();
	Fami_Text_Fade04F(4,"A","T","T","A","C","K",0,0);
	Fami_Text_Fade04S("＿","ぃ","３","！",0,0,0,0,0);
	Fami_Text_Scroll(1);

	Wait(1000);
	CreateSE("SE01","se8bit_通常_選択");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_Fade01F(4,0,2,"S","P","E","E","D","＿","ぃ","４");
	Fami_Text_Fade01S("！",0,0,0,0,0,0,0,0);
	Fami_Text_Scroll(2);

	Wait(1000);
	CreateSE("SE01","se8bit_通常_選択");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_Fade02F(4,"S","．","A","T","T","K","＿","ぃ");
	Fami_Text_Fade02S("２","！",0,0,0,0,0,0,0);
	Fami_Text_Scroll(3);

	Wait(1000);
	CreateSE("SE01","se8bit_通常_選択");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_Fade03F(4,"「","M","A","G","I","C","＿","V");
	Fami_Text_Fade03S("O","I","C","E","」",0,0,0,0);
	Fami_Text_Scroll(4);

	Fami_Text_Fade04F(4,"L","E","V","E","L","E","D","＿");
	Fami_Text_Fade04S("U","P","！",0,0,0,0,0,0);
	Fami_Text_Scroll(1);



	Wait(1000);


//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
	CreateSE("SE01","se8bit_戦闘_レベルアップ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(2000);
	Delete("@window_fami/f*");

//ノイズは　レベルが　あがった！
//こうげきりょくが　５　あがった！
//ちせいが　５　あがった！
//すばやさが　３　あがった！
//「じぶんかって」の　
//レベルが　あがった！
	Fami_Text_Fade01F(1,0,2,"N","O","I","Z","＿","L","E","V");
	Fami_Text_Fade01S("E","L","E","D","＿","U","P","！",0);

	Wait(500);
	Fami_Text_End();

	WaitKey();
	CreateSE("SE01","se8bit_通常_選択");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_End_Delete();
	Fami_Text_Fade02F(2,"A","T","T","A","C","K","＿","ぃ");
	Fami_Text_Fade02S("５","！",0,0,0,0,0,0);

	Wait(1000);
	CreateSE("SE01","se8bit_通常_選択");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_Fade03F(3,"D","E","F","E","N","S","E","＿");
	Fami_Text_Fade03S("ぃ","５","！",0,0,0,0,0,0);

	Wait(1000);
	CreateSE("SE01","se8bit_通常_選択");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_Fade04F(4,"A","G","I","L","I","T","Y","＿");
	Fami_Text_Fade04S("ぃ","３","！",0,0,0,0,0,0);
	Fami_Text_Scroll(1);

	Wait(1000);
	CreateSE("SE01","se8bit_通常_選択");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fami_Text_Fade01F(4,0,2,"「","S","E","L","F","I","S","H");
	Fami_Text_Fade01S("N","E","S","S","」","＿",0);
	Fami_Text_Scroll(2);

	Fami_Text_Fade02F(4,"L","E","V","E","L","E","D","＿");
	Fami_Text_Fade02S("U","P","！",0,0,0,0,0,0);
	Fami_Text_Scroll(3);
	Fami_Text_End();

	WaitKey();
	CreateSE("SE01","se8bit_通常_選択");
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("@window_fami/f*");

//「あくしまのトランクス」を
//てにいれた！
	Fami_Text_End_Delete();
	Fami_Text_Fade01F(1,0,2,"A","K","U","S",0,0,0,0,0);
	Fami_Text_Fade01S("＿","「","T","R","U","N","K","S","」");
	Fami_Text_Fade02F(2,"O","B","T","A","I","N","E","D","！");
	Fami_Text_End();

	WaitKey();
	CreateSE("SE01","se8bit_通常_選択");
	MusicStart("SE01",0,700,0,1000,null,false);

//「あくしまのあなあきくつした」を
//てにいれた！
	Fami_Text_End_Delete();
	Fami_Text_Fade03F(3,"A","K","U","S","＿","「","O","L");
	Fami_Text_Fade03S("D","＿","S","O","C","K","S","」",0);
	Fami_Text_Fade04F(4,"O","B","T","A","I","N","E","D","！");
	Fami_Text_Scroll(1);


	Wait(2000);

	CreateColorEX("絵色黒", 50000, "000000");
	Fade("絵色黒", 700, 1000, null, true);

	Delete("ファミキャラ01悪島*");
	Delete("ファミキャラ02悪島*");
	Delete("絵背景*");
	Delete("絵悪島*");
	Delete("@fami*");
	Delete("@window_fami/f*");



	CreateTextureEX("絵窓/絵負悪島", 1000, 464, 208, "cg/sys/ed/dot/dm_8悪島_4右01.png");
	Fade("絵窓/絵負悪島", 0, 1000, null, true);

	Rotate("絵窓/絵負悪島", 0, @0, @0, -90, null,true);


	SoundPlay("@dm8bit001",0,450,true);
	FadeDelete("絵色黒", 700, null, true);



//※戦闘終了
//悪島が店内の床にうつぶせに倒れている

	Wait(500);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);

//【蒼葉】
//「はぁ　はぁ」
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","H","A","＿","H","A","」",0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();

	WaitKey();

//―――――――――――――――――――――――――――



	Delete("@window_fami/f*");
//――――――――――――――――――――――――――――――――――――――

//【ノイズ】
//「ほんとうぜーな　コイツ」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","H","E","＿","W","A","S","＿");
	Fami_Text_Fade01S("T","O","U","G","H","」",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();


	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");


//※ノイズ、悪島を掴むとドアまで運んでいき、ぽーいと捨てる。

	Dot_Cara_Move("ノイズ","下",1,true);
	Dot_Cara_Fade("ノイズ","左",0,0);
	Wait(500);
	Dot_Cara_Move("ノイズ","左",1,100);
	Wait(100);
	CreateSE("SE01","se8bit_戦闘_ダメージ");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("絵窓/絵色白", 50000, "WHITE");
	Fade("絵窓/絵色白", 100, 1000, Dxl1, true);
	Wait(50);
//	Delete("絵負悪島");

	CreateSE("SE02","se8bit_通常_ふき飛ぶ");
	MusicStart("SE02",0,700,0,1500,null,false);
	Rotate("絵窓/絵負悪島", 600, @0, @0, -1440, null,false);
//	BezierMove("絵窓/絵負悪島", 600, (@0,@0){368,112}{304,112}(208,208), AxlDxl, false);
	Move("絵窓/絵負悪島", 600, 208, -16, null, false);
	FadeDelete("絵窓/絵色白", 50, Dxl1, true);
	Wait(600);
	Delete("絵窓/絵負悪島");

	Wait(300);

	Dot_Cara_Move("蒼葉","左",1,true);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);
//【蒼葉】
//「あっ」
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","A","H","！","」",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();

	WaitKey();

	Dot_Cara_Move("ノイズ","左",1,true);
	Wait(300);
	Delete("@window_fami/f*");

//【ノイズ】
//「じゃまだから　かたづけた」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","H","E","＿","W","A","S","＿");
	Fami_Text_Fade01S("I","N","＿","T","H","E","＿",0,0);
	Fami_Text_Fade02F("＿","＿","W","A","Y","」",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();


	WaitKey();
	Delete("@window_fami/f*");


//【蒼葉】
//「あーあ……」oh maannnn
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","O","H","＿","M","A","N","…");
	Fami_Text_Fade01S("…","」",0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();

	WaitKey();
	Delete("@window_fami/f*");


//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――

//【蒼葉】
//「…………」
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","…","…","…","…","」",0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();

	WaitKey();
	Delete("@window_fami/f*");


//【ノイズ】
//「…………？」
	Fami_Text_End_Delete();
	Dot_Cara_Fade("ノイズ","上",0,0);
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","…","…","…","…","？","」",0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();

	WaitKey();
	Delete("@window_fami/f*");

//【ノイズ】
//「どうした？」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","W","H","A","T","？","」",0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();

	WaitKey();
	Delete("@window_fami/f*");
	Dot_Cara_Fade("蒼葉","下",0,0);

//【蒼葉】
//「いや　なんかへんだとおもって」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","N","O","＿","J","U","S","T");
	Fami_Text_Fade01S("…","I","T","＿","F","E","E","L","S");
	Fami_Text_Fade02F(2,"＿","O","F","F","」",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();


	WaitKey();
	Delete("@window_fami/f*");

//【ノイズ】
//「なにが？」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","W","H","A","T","＿","D","O");
	Fami_Text_Fade01S("E","S","？","」",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();


	WaitKey();
	Delete("@window_fami/f*");


//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――

//【蒼葉】
//「おれたちだよ」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","U","S","」",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_End();
	WaitKey();


	Dot_Cara_Fade("蒼葉","右",0,0);
	Wait(500);
	Dot_Cara_Fade("蒼葉","左",0,0);
	Wait(500);
	Dot_Cara_Fade("蒼葉","下",0,0);
	Wait(1000);

//【蒼葉】
//「なんか　ものすごい
//　いわかんがある……」feel out of place
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade02F(2,"「","I","＿","J","U","S","T","＿");
	Fami_Text_Fade02S("F","E","E","L",0,0,0,0,0);
	Fami_Text_Fade03F(3,"＿","O","U","T","＿","O","F","＿");
	Fami_Text_Fade03S("P","L","A","C","E","…","…","」",0);
	SetVolumeEX("SE*", 0, 0, null);
	Fami_Text_Scroll(1);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");

//【ノイズ】
//「そうか？」
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","R","E","A","L","L","Y","？");
	Fami_Text_Fade01S("」",0,0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");
	Dot_Cara_Fade("蒼葉","左",0,0);
	Wait(500);

//【蒼葉】
//「うん
//　これじゃいけないような……」this cant be right
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","Y","E","A","H",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	Wait(200);
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade02F(2,"＿","L","I","K","E","＿","T","H");
	Fami_Text_Fade02S("I","S","＿","C","A","N","T","＿",0);
	Fami_Text_Fade03F(3,"＿","B","E","＿","R","I","G","H");
	Fami_Text_Fade03S("T","」",0,0,0,0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");
//	Dot_Cara_Fade("蒼葉","下",0,0);


//【蒼葉】
//「なにか
//　まちがってしまったような……」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","L","I","K","E",＿,"S","O");
	Fami_Text_Fade01S("M","E","T","H","I","N","G",0);
	Fami_Text_Fade02F(2,"＿","I","S","＿","W","R","O","N");
	Fami_Text_Fade02S("G","…","…","」",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);
	//Fami_Text_Scroll(1);
	//Fami_Text_Scroll(2);

//―――――――――――――――――――――――――――
	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");

//――――――――――――――――――――――――――――――――――――――

//【ノイズ】
//「なに　ブツブツいってるんだ？」
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","W","H","A","T","＿","A","R");
	Fami_Text_Fade01S("E","＿","Y","O","U","＿",0,0,0);
	Fami_Text_Fade02F("＿","＿","M","U","T","T","E","R");
	Fami_Text_Fade02S("I","N","G","？","」",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");
	Dot_Cara_Fade("蒼葉","下",0,0);

//【蒼葉】
//「いや　なんでもない」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","N","O","＿","N","O","T","H");
	Fami_Text_Fade01S("I","N","G","」",0,0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@window_fami/f*");


//【ノイズ】
//「あっ」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","O","H","」",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");
	Dot_Cara_Move("ノイズ","右",1,true);
	Dot_Cara_Move("ノイズ","上",1,true);
	Dot_Cara_Fade("蒼葉","右",0,0);
	Dot_Cara_Fade("ノイズ","左",0,0);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);

//【ノイズ】
//「ライムがはじまる　いくぞ」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","L","E","T","S","＿","G","O");
	Fami_Text_Fade01S("，","＿","R","H","Y","M","E","＿",0);
	Fami_Text_Fade02F(2,"＿","I","S","＿","S","T","A","R");
	Fami_Text_Fade02S("T","I","N","G","」",0,0,0);
	SetVolumeEX("SE*", 0, 0, null);


	Fami_Text_End();
	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");


	Dot_Cara_Move("ノイズ","右",1,200);
	Dot_Cara_Move("蒼葉","右",1,true);
	Dot_Cara_Move("ノイズ","右",1,200);
	Dot_Cara_Move("蒼葉","右",1,true);
	Dot_Cara_Move("ノイズ","右",1,200);
	Dot_Cara_Move("蒼葉","右",1,true);
	Dot_Cara_Move("ノイズ","下",1,200);
	Dot_Cara_Move("蒼葉","右",1,true);
	Dot_Cara_Move("ノイズ","下",1,200);
	Dot_Cara_Move("蒼葉","下",1,true);
	Dot_Cara_Move("ノイズ","下",1,200);
	Dot_Cara_Move("蒼葉","下",1,true);
	Dot_Cara_Move("ノイズ","左",1,200);
	Dot_Cara_Move("蒼葉","下",1,true);
	Dot_Cara_Move("ノイズ","左",1,200);
	Dot_Cara_Move("蒼葉","左",1,true);
	Dot_Cara_Move("ノイズ","下",1,200);
	Dot_Cara_Move("蒼葉","左",1,true);
	Dot_Cara_Fade("蒼葉","下",0,0);

	Wait(500);

//※ノイズ、蒼葉の腕を引っ張ってカウンターを出る。

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);


//【蒼葉】
//「おい　みせばんが……！」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","H","E","Y","＿","T","H","E");
	Fami_Text_Fade01S("＿","S","H","O","P","…","！","」",0);
	SetVolumeEX("SE*", 0, 0, null);


	Fami_Text_End();
	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");

	Dot_Cara_Move("ノイズ","下",1,200);
	Dot_Cara_Move("蒼葉","下",1,true);
	Dot_Cara_Move("ノイズ","下",1,200);
	Dot_Cara_Move("蒼葉","下",1,true);
	Dot_Cara_Move("ノイズ","下",1,200);
	Dot_Cara_Move("蒼葉","下",1,true);

	CreateSE("SE01","se8bit_通常_開く_b");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
//※ノイズ、蒼葉の腕を引っ張ってカウンターを出る。

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);

//―――――――――――――――――――――――――――


//※蒼葉、ノイズに連れてかれてドアの外へ

//――――――――――――――――――――――――――――――――――――――
//【蒼葉】
//「ちょっと、ノイズ……！」
	Fami_Text_End_Delete();
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","W","A","I","T","＿","N","O");
	Fami_Text_Fade01S("I","Z","…","！","」",0,0,0,0);
	SetVolumeEX("SE*", 0, 0, null);


	Fami_Text_End();
	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");

	CreateSE("SE01","se8bit_通常_移動");
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("@ファミキャラ01ノイズ*");
	Delete("@ファミキャラ02ノイズ*");
	Dot_Cara_Move("蒼葉","下",1,true);
	CreateSE("SE01","se8bit_通常_移動");
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("@ファミキャラ01蒼葉*");
	Delete("@ファミキャラ02蒼葉*");

	SetVolumeEX("@dm*", 1000, 0, null);
	Wait(2500);

//※誰もいなくなった店内で、少し遅れて蓮が画面端から走って出てくる。
	CreateSE("SE01","se8bit_通常_移動");
	MusicStart("SE01",0,700,0,1000,null,false);
	Dot_Cara_Fade("蓮犬","下",11,3);
	Wait(1000);
	Dot_Cara_Move("蓮犬","右",7,true);
	Dot_Cara_Move("蓮犬","下",2,true);
	Dot_Cara_Move("蓮犬","左",4,true);
	Dot_Cara_Move("蓮犬","下",1,true);
	Dot_Cara_Fade("蓮犬","下",0,0);
	Wait(500);
	Dot_Cara_Fade("蓮犬","右",0,0);
	Wait(500);
	Dot_Cara_Fade("蓮犬","上",0,0);
	Wait(500);
	Dot_Cara_Fade("蓮犬","左",0,0);
	Wait(500);
	Dot_Cara_Fade("蓮犬","下",0,0);
	Wait(1000);
	Dot_Cara_Move("蓮犬","上",1,true);
	Dot_Cara_Move("蓮犬","右",3,true);
	Dot_Cara_Move("蓮犬","下",3,true);
	Dot_Cara_Move("蓮犬","左",2,true);
	Dot_Cara_Fade("蓮犬","右",0,0);
	Wait(500);
	Dot_Cara_Fade("蓮犬","上",0,0);
	Wait(500);
	Dot_Cara_Fade("蓮犬","左",0,0);
	Wait(500);
	Dot_Cara_Fade("蓮犬","下",0,0);
	Wait(1000);

	CreateTextureEX("famitextbox", $fami_box_priority, $famiboxX, $famiboxY, "ファミコンボックス");
	Fade("@famitextbox", 100, 1000, null, true);

//【蓮】
//「あおば！」
	CreateSE("SE01","se8bit_通常_会話_L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,0,5,"「","A","O","B","A","！","」",0);
	SetVolumeEX("SE*", 0, 0, null);

	Fami_Text_End();
	WaitKey();
	Delete("@fami*");
	Delete("@window_fami/f*");

	Move("@ファミキャラ01蓮犬*", 300, @0, @128, Dxl1, false);
	Move("@ファミキャラ02蓮犬*", 300, @0, @128, Dxl1, true);

//	Dot_Cara_Move("蓮犬","下",4,true);
	CreateSE("SE01","se8bit_通常_開く_b");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
	CreateSE("SE01","se8bit_通常_移動");
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("@ファミキャラ01蓮犬*");
	Delete("@ファミキャラ02蓮犬*");


	Wait(2000);

	CreateColorEX("絵色黒", 15000, "000000");
	Fade("絵色黒", 1500, 1000, null, true);


//※蓮きゅん、蒼葉のあとを慌ててついていく。

//※画面暗転
//※だんだんBGMがバグっていくのもアリ。


//下記フォントスピード減

	Wait(1500);




//…………
//	CreateSE("SE01","se8bit_通常_会話_200L");
//	MusicStart("SE01",0,700,0,950,null,true);
	Fami_Text_Fade01F(1,200,5,"…","…","…","…",0,0,0,0);
//	SetVolumeEX("SE*", 0, 0, null);
//	jikauchi_moji01();


	WaitKey();
	Wait(500);
	Delete("@window_fami/f*");
	Delete("@絵文字*");

//ソウ
//オレタチノ　イツモト　カワラナイ
//ニチジョウハ　ツヅイテ　イク
//	MusicStart("SE01",0,700,0,950,null,true);
	Fami_Text_Fade01F(1,200,5,"Y","E","S",0,0,0,0,0);
//	CreateSE("SE01","se8bit_通常_会話_200L");
//	MusicStart("SE01",0,700,0,950,null,true);
	Fami_Text_Fade02F(2,"O","U","R","＿","N","O","R","M");
	Fami_Text_Fade02S("A","L","＿","D","A","Y","S",0,0);
	Fami_Text_Fade03F(3,"W","I","L","L","＿","C","O","N");
	Fami_Text_Fade03S("T","I","N","U","E","＿","A","L","L");
	Fami_Text_Fade04F(4,"T","H","E","＿","S","A","M","E",0);
//	SetVolumeEX("SE*", 0, 0, null);

//	jikauchi_moji02();

	WaitKey();
	Delete("@window_fami/f*");
	Delete("@絵文字*");
	Wait(500);

	Delete("絵平凡内");

//下記さらにフォントスピード減

//イツマデモ　・　・　・
//	CreateSE("SE01","se8bit_通常_会話_1000L");
//	MusicStart("SE01",0,700,0,1000,null,true);
	Fami_Text_Fade01F(1,1000,5,"F","O","R","E","V","E","R","…");
	SetVolumeEX("SE*", 0, 0, null);




//覇：下記元演出。
/*

//※演出：ノイズの特殊選択肢に失敗した場合
//※演出：画面がファミコン風になる

//※ＳＥ：プルル、プルル、と数回電話が鳴る音
//※ＳＥ：ガチャッと受話器を取る音

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000010a01">
「はい、お電話ありがとうございます。ジャンクショップ『平凡』です」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000020a01">
「はい」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000030a01">
「はい、扱ってます。はい」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000040a01">
「ご注文でしょうか？」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000050a01">
「はい、わかりました。それではお客様の個人
データをお送り下さい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ピッ、ピピッみたいな個人データ受信完了

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000060a01">
「……はい、ありがとうございました！」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000070a01">
「それでは今後とも当店をごひいきに～」

//※ＳＥ：ぴっと受話器を切る音

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000080a01">
「……ふぅ」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000090a01">
「そろそろ店長が帰ってくる頃かな？」

//※がちゃっとドアを開けてノイズが入ってくる

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000100a03">
「よぉ」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000110a01">
「お前……、ノイズ！」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000120a01">
「店まで来て何の用だよ」

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000130a03">
「俺のチームに入れよ」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000140a01">
「ライムだろ？　嫌だよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000150a03">
「……ちっ」

//※ノイズ、カウンターを乗り越える。
//蒼葉の上に馬乗りになる。

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000160a01">
「な……っ！　どけよ！」

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000170a03">
「チームに入れ」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000180a01">
「嫌だって……、！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000190a03">
「…………」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000200a01">
「ん、む……！」

//※↑キスされてます。蒼葉じたばた

//※ばたーんとドアを開けて悪島登場

{	St("C",740, @0,@0,"st悪島_通常_normal");
	FadeSt("C",200,true);}
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm24/6000210b08">
「見つけたぞ！　このテロリストどもー！！」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000220a01">
「！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000230a03">
「うぜぇのが来たな」

{	St("C",740, @0,@0,"st悪島_通常_normal");
	FadeSt("C",200,true);}
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm24/6000240b08">
「逮捕してやるー！！」

//※エンカウント／戦闘

悪島が現れた！

蒼葉の攻撃！
悪島に１０のダメージ！

ノイズはキューブブロックを投げつけた！
悪島に２０のダメージ！

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
悪島はメガホンで叫んだ！
「あ゛ーーーーーーー！！！！」

蒼葉に１０のダメージ！
ノイズに８のダメージ！

蒼葉は蓮をけしかけた！
蓮が悪島に噛み付いた！
１５のダメージ！

ノイズは悪態をついた！
悪島の防御力が下がった！

悪島はメガホンを投げつけた！
しかしノイズは軽やかにかわした！
悪島の攻撃力が１０下がった！

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
蒼葉は蹴りを放った！
悪島に１５のダメージ！

ノイズはナックルを投げつけた！
ヒット！
悪島に５０のダメージ！

悪島は倒れた！

蒼葉たちは１４６の経験値を手に入れた！

蒼葉はレベルが上がった！
攻撃力が３上がった！
素早さが４上がった！
体力が２上がった！
「魔性の声」のレベルが上がった！

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
ノイズはレベルが上がった！
攻撃力が５上がった！
知性が５上がった！
素早さが３上がった！
「自分勝手」のレベルが上がった！

「悪島のトランクス」を手に入れた！
「悪島の穴あき靴下」を手に入れた！

//※戦闘終了
//悪島が店内の床にうつぶせに倒れている

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000250a01">
「はぁ、はぁ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000260a03">
「ほんとうぜーな、コイツ」

//※ノイズ、悪島を掴むとドアまで運んでいき、
ぽーいと捨てる。

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000270a01">
「あっ」

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000280a03">
「邪魔だから片付けた」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000290a01">
「あーあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000300a01">
「…………」

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000310a03">
「…………？」

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000320a03">
「どうした？」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000330a01">
「いや、なんか変だと思って」

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000340a03">
「何が？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000350a01">
「俺たちだよ」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000360a01">
「なんかものすごい違和感がある……」

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000370a03">
「そうか？」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000380a01">
「うん。これじゃいけないような……」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000390a01">
「何か間違ってしまったような……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000400a03">
「何ブツブツ言ってるんだ？」

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000410a01">
「いや、なんでもない」

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000420a03">
「あっ」

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/6000430a03">
「ライムが始まる。行くぞ」

//※ノイズ、蒼葉の腕を引っ張ってカウンターを出る。

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000440a01">
「おい、店番が……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※蒼葉、ノイズに連れてかれてドアの外へ

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/6000450a01">
「ちょっと、ノイズ……！」

//※誰もいなくなった店内で、少し遅れて
蓮が画面端から走って出てくる。

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm24/6000460a06">
「蒼葉！」

//※蓮きゅん、蒼葉のあとを慌ててついていく。

//※画面暗転
//※だんだんBGMがバグっていくのもアリ。

　…………

　ソウ
　オレタチ　ノ　イツモ　ト　カワラナイ
　ニチジョウ　ハ　ツヅイテ　イク　

　イツマデモ　・　・　・

//※おわり／スタッフロール



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm9999.nss"]

*/


	Wait(800);

	CreateColorEX("絵色黒", 32000, "000000");
	Fade("絵色黒", 1500, 1000, null, true);


	//ロック解除
	LockVideo(false);


	Delete("絵窓*");
	Delete("@fami*");
	Delete("@Pro*");
	Delete("@ファミ*");

	ClearFadeAll(2000, true);

	Wait(3000);

}
