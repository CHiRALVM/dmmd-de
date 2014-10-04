$Revision: 10 $

//=============================================================================//
//■バックログ■
//=============================================================================//

chapter main
{
	Wait(16);

	//★超速からの変遷用
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	//■フラグ関係
	//バックログ関係システム変数
	//※一行あたりの文字数はシステムの都合上「System.ini」の「バックログ」セクションで設定してください。
	$SYSTEM_backlog_row_max=32;			//バックログ表示の最大行数
	$SYSTEM_backlog_voice_icon_x=168;	//バックログ表示の音声リピートアイコンＸ座標
	$SYSTEM_backlog_position_x=210;		//バックログ表示の文章開始位置Ｘ座標
	$SYSTEM_backlog_position_y=42;		//バックログ表示の文章開始位置Ｙ座標
	$SYSTEM_backlog_row_interval=26;	//バックログ表示の行間サイズ
	$SYSTEM_backlog_character_width=11;	//バックログ表示の各文字幅 was 9 yo
	$SYSTEM_backlog_word_in_row=64;
	#SYSTEM_backlog_word_in_row=64;
	#SYSTEM_backlog_voice_icon_shift_y=1;	//バックログ表示の音声アイコンのY軸

	//▽終了スクリプトにてバックログを出さないようにする
	if($SYSTEM_backlog_lock_a){
		return;
	}

//	$tekitou=MilliTime();

	//■ロードファイル
//	LoadFile("cg/sys/backlog/ベース.png", true);

	//■準備「スクリーン」//※右クリックから来ていなければ
	if(!$SYSTEM_menu_enable){
		CreateTexture("video",10000,center,middle,VIDEO);
		CreateTexture("bkd背景２",10100,center,middle,VIDEO);
	}else if($SYSTEM_menu_enable){
		CreateTexture("video",10000,center,middle,SCREEN);
		CreateTexture("bkd背景２",10100,center,middle,SCREEN);
	}
	Wait(16);

	//SetFont("ＭＳ ゴシック",20,000000,000000,100);
	SetFont("ＭＳ ゴシック",21,FFFFFF,000000,100,AROUND);

	//▼定義「背景」
	CreateTexture("bkf黒",10010,0,0,"cg/sys/backlog/加算黒.png");
	SetAlias("bkf黒", "bkf黒");
	CreateTexture("bk黒２",10110,0,0,"cg/sys/backlog/加算黒.png");
	SetAlias("bk黒２", "bk黒２");

	CreateTexture("bkf背景",10010,117,0,"cg/sys/backlog/ベース.png");
	SetAlias("bkf背景", "bkf背景");
	CreateTexture("bk背景２",10110,117,0,"cg/sys/backlog/ベース.png");
	SetAlias("bk背景２", "bk背景２");

	CreateTexture("bkf飾り",10010,914,199,"cg/sys/backlog/送りボタン飾り.png");
	SetAlias("bkf飾り", "bkf飾り");


	//▼定義「上ページ送り」
	CreateTexture("bkf上ページ",10050,868,172,"cg/sys/backlog/早戻し_off.png");
//	CreateChoice("bk上ページ",0,0,0,0,0,0);
	CreateChoice("bk上ページ");
	CreateTexture("bk上ページ/MouseUsual/hit",0,868,172,"cg/sys/backlog/icon_hit.png");
//	CreateTexture("bk上ページ/MouseUsual/button",10050,868,172,"cg/sys/backlog/早戻し_off.png");
	CreateTexture("bk上ページ/MouseOver/button",10050,868,172,"cg/sys/backlog/早戻し_over.png");
	CreateTexture("bk上ページ/MouseClick/button",10050,868,172,"cg/sys/backlog/早戻し_on.png");

	//▼定義「上ライン送り」
	CreateTexture("bkf上ライン",10050,868,218,"cg/sys/backlog/戻し_off.png");
//	CreateChoice("bk上ライン",0,0,0,0,0,0);
	CreateChoice("bk上ライン");
	CreateTexture("bk上ライン/MouseUsual/hit",0,868,218,"cg/sys/backlog/icon_hit.png");
//	CreateTexture("bk上ライン/MouseUsual/button",10050,868,218,"cg/sys/backlog/戻し_off.png");
	CreateTexture("bk上ライン/MouseOver/button",10050,868,218,"cg/sys/backlog/戻し_over.png");
	CreateTexture("bk上ライン/MouseClick/button",10050,868,218,"cg/sys/backlog/戻し_on.png");

	//▼定義「下ライン送り」
	CreateTexture("bkf下ライン",10050,868,265,"cg/sys/backlog/送り_off.png");
//	CreateChoice("bk下ライン",0,0,0,0,0,0);
	CreateChoice("bk下ライン");
	CreateTexture("bk下ライン/MouseUsual/hit",0,868,265,"cg/sys/backlog/icon_hit.png");
//	CreateTexture("bk下ライン/MouseUsual/button",10050,868,265,"cg/sys/backlog/送り_off.png");
	CreateTexture("bk下ライン/MouseOver/button",10050,868,265,"cg/sys/backlog/送り_over.png");
	CreateTexture("bk下ライン/MouseClick/button",10050,868,265,"cg/sys/backlog/送り_on.png");

	//▼定義「下ページ送り」
	CreateTexture("bkf下ページ",10050,868,311,"cg/sys/backlog/早送り_off.png");
//	CreateChoice("bk下ページ",0,0,0,0,0,0);
	CreateChoice("bk下ページ");
	CreateTexture("bk下ページ/MouseUsual/hit",0,868,311,"cg/sys/backlog/icon_hit.png");
//	CreateTexture("bk下ページ/MouseUsual/button",10050,868,311,"cg/sys/backlog/早送り_off.png");
	CreateTexture("bk下ページ/MouseOver/button",10050,868,311,"cg/sys/backlog/早送り_over.png");
	CreateTexture("bk下ページ/MouseClick/button",10050,868,311,"cg/sys/backlog/早送り_on.png");

	//▼定義「出口」
	CreateTexture("bkf出口基本",10050,744,538,"cg/sys/backlog/ＥＸＩＴボタン_off.png");
//	CreateChoice("bk出口",0,0,0,0,0,0);
	CreateChoice("bk出口");
	SetAlias("bk出口", "bk出口");
	CreateTexture("@bk出口/MouseUsual/hit",0,744,538,"cg/sys/backlog/exit_hit.png");
//	CreateTexture("@bk出口/MouseUsual/button",10050,744,538,"cg/sys/backlog/ＥＸＩＴボタン_off.png");
	CreateTexture("@bk出口/MouseOver/button",10050,744,538,"cg/sys/backlog/ＥＸＩＴボタン_over.png");
	CreateTexture("@bk出口/MouseClick/button",10050,744,538,"cg/sys/backlog/ＥＸＩＴボタン_on.png");
	CreateSound("@bk出口/MouseOver/se", SE, "sound/se/SE_システム_メニュー_選択.ogg");

	//▼定義「バックログ」
	$ScrollbarX=843;
	$ScrollbarY=493;
	CreateScrollbar("bkスクロールバー",0,$ScrollbarX,$ScrollbarY,$ScrollbarX,32,0,VERTICAL,"cg/sys/backlog/スライダoff.png");
	SetAlias("bkスクロールバー", "bkスクロールバー");
	CreateBacklog("bkバックログ",10010);
	SetScrollbar("bkスクロールバー","bkバックログ");


	//▼定義「矢印」
	CreateChoice("bk矢印");
	SetAlias("bk矢印", "bk矢印");
	CreateTexture("@bk矢印/MouseUsual/hit",10050,$ScrollbarX,$ScrollbarY,"cg/sys/backlog/スライダoff.png");
	CreateProcess("@bk矢印/MouseOver/button", 10050, 0, 0, "BackLogProcessOpen");
	CreateProcess("@bk矢印/MouseLeave/button", 10050, 0, 0, "BackLogProcessStop");

	CreateTexture("bkfカーソル01",10050,$ScrollbarX,$ScrollbarY,"cg/sys/backlog/スライダoff.png");
	SetAlias("bkfカーソル01", "bkfカーソル01");
	CreateTexture("bkカーソル02",10050,$ScrollbarX,$ScrollbarY,"cg/sys/backlog/スライダover.png");
	SetAlias("bkカーソル02", "bkカーソル02");

//ネクストフォーカス
	SetNextFocus("bk上ページ/MouseUsual/hit","bk上ライン/MouseUsual/hit",LEFT);
	SetNextFocus("bk上ライン/MouseUsual/hit","bk下ライン/MouseUsual/hit",LEFT);
	SetNextFocus("bk下ライン/MouseUsual/hit","bk下ページ/MouseUsual/hit",LEFT);
	SetNextFocus("bk下ページ/MouseUsual/hit","@bk出口/MouseUsual/hit",LEFT);
	SetNextFocus("@bk出口/MouseUsual/hit","bk上ページ/MouseUsual/hit",LEFT);

	SetNextFocus("bk上ページ/MouseUsual/hit","@bk出口/MouseUsual/hit",RIGHT);
	SetNextFocus("bk上ライン/MouseUsual/hit","bk上ページ/MouseUsual/hit",RIGHT);
	SetNextFocus("bk下ライン/MouseUsual/hit","bk上ライン/MouseUsual/hit",RIGHT);
	SetNextFocus("bk下ページ/MouseUsual/hit","bk下ライン/MouseUsual/hit",RIGHT);
	SetNextFocus("@bk出口/MouseUsual/hit","bk下ページ/MouseUsual/hit",RIGHT);

	//●準備
	Request("*/*/hit", Erase);
	Fade("bk*", 0, 0, null, false);
	Fade("bk*/*", 0, 0, null, false);
	Fade("bk*/*/*", 0, 0, null, true);
	Fade("bkf*", 0, 1000, null, false);
//	Fade("bk*/MouseUsual/button", 0, 1000, null, false);
	Fade("bkd背景２", 0, 1000, null, true);

	//●描画
	Fade("bk背景２", 0, 1000, null, false);
	Move("bk背景２", 0, @0, @-576, null, true);

	Move("bk背景２", 150, @0, @576, Dxl1, false);
	Fade("bk黒２", 150, 1000, null, true);

	CreateTexture("bkスクリーン", 10200, 0, 0, SCREEN);
	Wait(16);

	Fade("bk背景２", 0, 0, null, false);
	Fade("bk黒２", 0, 0, null, false);
	Fade("bkd背景２", 0, 0, null, true);

	Fade("bkスクリーン", 100, 0, null, true);

	WaitAction("bkスクリーン", null);

//	Message("デバッグ用ウィンドウ",String("%d",MilliTime()-$tekitou));

	//★選択肢
	$SYSTEM_backlog_enable=true;
	$PreBackLogPositionY=465;

	$SYSTEM_r_button_down=false;
	while(EnableBacklog()&&$SYSTEM_backlog_enable)
	{
		select
		{
			if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}
			if($SYSTEM_keydown_b||$SYSTEM_r_button_down){$SYSTEM_backlog_enable=false;break;}

			case bk出口{$SYSTEM_backlog_enable=false;break;}
			case bk上ライン{Request("bkスクロールバー",Decrement);}
			case bk上ページ{Request("bkスクロールバー",Prev);}
			case bk下ライン{Request("bkスクロールバー",Increment);}
			case bk下ページ{Request("bkスクロールバー",Next);}

			//★カーソルアイコン
			case bkスクロールバー{}
			case bk矢印{}
			Position("bkスクロールバー",$BackLogPositionX,$BackLogPositionY);
			if($BackLogPositionY!=$PreBackLogPositionY){
				Move("@bk矢印/MouseUsual/hit", 0, @0, $BackLogPositionY, null, true);
				Move("bkfカーソル01", 0, @0, $BackLogPositionY, null, true);
				Move("bkカーソル02", 0, @0, $BackLogPositionY, null, true);
			}
			$PreBackLogPositionY=$BackLogPositionY;

			if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}

			//★キーダウン系
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
				call_chapter nss/sys_close.nss;
			}else if($SYSTEM_keydown_t){
				call_chapter nss/sys_reset.nss;
			}/*else if($SYSTEM_keydown_r){
				call_chapter nss/sys_backselect.nss;
			}*/
		}

		if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}
		Wait(16);
	}

	Wait(100);


	//●終了動作「描画」
	CreateSound("bkサウンド１", SE, "sound/se/SE_システム_メニュー_終了.ogg");
	Request("bkサウンド１", Play);

	Fade("bk*/MouseOver/button", 0, 0, null, false);
	Fade("bk出口/MouseClick/button", 0, 1000, null, true);

	Fade("bkスクリーン", 100, 1000, null, true);

	Fade("bkd背景２", 0, 1000, null, true);

	Fade("bk背景２", 0, 1000, null, false);
	Fade("bk黒２", 0, 1000, null, false);
	Fade("bkスクリーン", 0, 0, null, true);

	Move("bk背景２", 150, @0, @-576, null, false);
	Fade("bk黒２", 150, 0, null, true);

	if(!$SYSTEM_menu_enable){
//		Fade("bkd背景２", 300, 1000, null, false);
//		WaitAction("bkd背景２", null);

		Delete("bk*/*/*");
		Delete("bk*");
	}else if($SYSTEM_menu_enable){
//		Fade("bkd背景２", 300, 1000, null, false);
//		WaitAction("bkd背景２", null);

		Delete("bk*/*/*");
		Delete("bk*");
	}

	$SYSTEM_r_button_down=false;
	$SYSTEM_keydown_b=false;
	$SYSTEM_backlog_enable=false;

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;
}


//■プロセスマクロ
function BackLogProcessOpen()
{
	Fade("@bkカーソル02", 0, 1000, null, false);
	Fade("@bkfカーソル01", 0, 0, null, true);
}
function BackLogProcessStop()
{
	Fade("@bkfカーソル01", 0, 1000, null, false);
	Fade("@bkカーソル02", 0, 0, null, false);
//	SetVolume("@Config1a_BVolume_Pro01/MouseOver/sound", 0, 1000, NULL);
}
