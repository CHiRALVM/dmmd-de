$Revision: 137 $
#include "nss/function_stand.nss"
#include "nss/function_process.nss"

#include "nss/function_dm.nss"
#include "nss/function_coil.nss"
#include "nss/function_selspec.nss"
#include "nss/function_rm.nss"

#include "nss/function_lc_akk.nss"
#include "nss/function_lc_ara.nss"
#include "nss/function_lc_chiyo.nss"
#include "nss/function_lc_cono.nss"
#include "nss/function_lc_oga.nss"
#include "nss/function_lc_shima.nss"
#include "nss/function_lc_toho.nss"

#include "nss/function_lc_ikk.nss"

//■マクロをさらにマクロにてまとめて定義
//=============================================================================//
.//まとめ定義
//=============================================================================//

//―――――――――――――――
..SystemInit
//―――――――――――――――
function SystemInit()
{
	$SYSTEM_text_interval = 48;
	$SYSTEM_spt_name=$構成名+$スクリプトバージョン;

	//▽絶対的音声同期解除
	$SYSTEM_ignore_voice_sync_text=false;
	$SYSTEM_ignore_text_speed=false;

	//■一度読み込んだら再度読み込んでしまわないように。
	//▽BGM全部
	if(!$BGM_Init){
		if($Logo){
			//CreateTexture("タイトル警告", 100, 0, 0, "cg/sys/title/ローディング.png");
			//Fade("背景１", 0, 0, null, true);
			//Fade("背景１", 300, 1000, null, true);
		}
		InitBGM();
		$BGM_Init=true;
	}
	//▽TEXTBOX系とその他システム画像系
	if(!$BOX_Init){
		LoadBox();
		SystemSet();
		$BOX_Init=true;
	}

	//Fade("タイトル警告", 300, 0, null, true);
	//Delete("タイトル警告");

}

//■スクリプト冒頭定義関連
//=============================================================================//
.//基礎定義
//=============================================================================//

//―――――――――――――――
..SystemSet
//―――――――――――――――
function SystemSet()
{
	//◆超速対応だお
	SystemConquest();

	//◆予め読みたい画像があれば・・・

}

//―――――――――――――――
..SystemConquest
//―――――――――――――――
function SystemConquest()
{
	//◆超速対応
	Conquest("nss/function.nss",null,true);
	Conquest("nss/sys_config.nss",null,true);
	Conquest("nss/function_stand.nss",null,true);
	Conquest("nss/function_process.nss",null,true);

	Conquest("nss/function_dialog.nss",null,true);

	Conquest("nss/function_move.nss",null,true);
	Conquest("nss/function_select.nss",null,true);

	Conquest("nss/function_dm.nss",null,true);
	Conquest("nss/function_coil.nss",null,true);
	Conquest("nss/function_coiltext.nss",null,true);
	Conquest("nss/function_selspec.nss",null,true);
	Conquest("nss/function_rm.nss",null,true);

	Conquest("nss/function_lc_akk.nss",null,true);
	Conquest("nss/function_lc_ara.nss",null,true);
	Conquest("nss/function_lc_chiyo.nss",null,true);
	Conquest("nss/function_lc_cono.nss",null,true);
	Conquest("nss/function_lc_oga.nss",null,true);
	Conquest("nss/function_lc_shima.nss",null,true);
	Conquest("nss/function_lc_toho.nss",null,true);

	Conquest("nss/function_lc_ikk.nss",null,true);

	Conquest("nss/sys_save.nss",null,true);

//	Conquest("nss/function_quick.nss",null,true);
//	Conquest("nss/sys_twitter.nss",null,true);

}

//―――――――――――――――
..LoadBox
//―――――――――――――――
function LoadBox()
{
	//☆通常ウィンドウ画像
	//"ライム"、"暴露"、"暴露白"
	//未記入＆デフォルトは通常
	$TEXTBOX_TYPE="デフォルト";
	$FwNut="無し";

	//通常
	CreateTexture("boxHN", 19000, 0, 403, "cg/sys/adv/会話ウィンドウ.png");
	SetAlias("boxHN", "boxHN");
	Fade("boxHN",0,0,null,false);
	Request("boxHN", Lock);
	Request("boxHN", Hideable);

	CreateTexture("boxFN", 19000, 0, 362, "cg/sys/adv/顔ウィンドウ.png");
	SetAlias("boxFN", "boxFN");
	Fade("boxFN",0,0,null,false);
	Request("boxFN", Lock);
	Request("boxFN", Hideable);

	//暴露
	CreateTexture("boxHB", 19000, 0, 403, "cg/sys/adv/会話ウィンドウ黒.png");
	SetAlias("boxHB", "boxHB");
	Fade("boxHB",0,0,null,false);
	Request("boxHB", Lock);
	Request("boxHB", Hideable);

	CreateTexture("boxFB", 19000, 0, 362, "cg/sys/adv/顔ウィンドウ黒.png");
	SetAlias("boxFB", "boxFB");
	Fade("boxFB",0,0,null,false);
	Request("boxFB", Lock);
	Request("boxFB", Hideable);

	//暴露・白
	CreateTexture("boxHW", 19000, 0, 403, "cg/sys/adv/会話ウィンドウ白.png");
	SetAlias("boxHW", "boxHW");
	Fade("boxHW",0,0,null,false);
	Request("boxHW", Lock);
	Request("boxHW", Hideable);

	CreateTexture("boxFW", 19000, 0, 362, "cg/sys/adv/顔ウィンドウ白.png");
	SetAlias("boxFW", "boxFW");
	Fade("boxFW",0,0,null,false);
	Request("boxFW", Lock);
	Request("boxFW", Hideable);

	//ライム
	CreateTexture("boxBL", 19000, 0, 326, "cg/sys/adv/ライム会話パーツベース.png");
	SetAlias("boxBL", "boxBL");
	Fade("boxBL",0,0,null,false);
	Request("boxBL", Lock);
	Request("boxBL", Hideable);

	CreateTexture("boxHL", 19000, 0, 405, "cg/sys/adv/ライム会話パーツボックス.png");
	SetAlias("boxHL", "boxHL");
	Fade("boxHL",0,0,null,false);
	Request("boxHL", Lock);
	Request("boxHL", Hideable);

	CreateTexture("boxFL", 19000, 13, 361, "cg/sys/adv/ライム会話パーツフェイス.png");
	SetAlias("boxFL", "boxFL");
	Fade("boxFL",0,0,null,false);
	Request("boxFL", Lock);
	Request("boxFL", Hideable);


	//☆通常ウィンドウ用
	CreateWindow("box0", 20001, 0, 0, 1024, 576, false);
	SetAlias("box0", "box0");
	Request("box0", Lock);

	//マスク
	CreateMask("FwMask01", 19001, 8, 374, "cg/sys/adv/顔ウィンドウマスク.png",false);
	SetAlias("FwMask01", "FwMask01");
	Request("FwMask01", Lock);

	CreateMask("FwMask02", 19001, 13, 361, "cg/sys/adv/ライム会話パーツフェイスマスク.png",false);
	SetAlias("FwMask02", "FwMask02");
	Request("FwMask02", Lock);

	//エフェクト・コイルつるし用
//	CreateWindow("EFWIN", 20000, 0, 0, 1024, 576, false);
//	SetAlias("EFWIN", "EFWIN");
//	Request("EFWIN", Lock);


	//☆カゴメ吊るし用
	//CreateName("RateWindow");
	//SetAlias("RateWindow", "RateWindow");
	//Request("RateWindow", Lock);
}


//■スクリプト冒頭：本文呼び出し前後定義
//メインゲーム内【CallScene前】
//―――――――――――――――
..GameMainSet
//―――――――――――――――
function GameMainSet()
{
	//デバッグ変数を初期化
	//$DEBUG_cgbglist="";

	//☆超速全読み設定：未読へ
	//Conquest($ConGameName,$GameName2,false);//Main
	//Conquest($ConGameName,$GameName,false);//本文Scene

	if(!$PLACE_reco){
		//☆時刻毎にスキップとオートモードを解除
		#JIKOKU_auto_text_cancel=true;//やらない
		if(!#JIKOKU_auto_text_cancel){
			$SYSTEM_skip=false;
			#SYSTEM_skip_express=false;
			$SYSTEM_text_auto=false;
	
			//Message("デバッグ用ウィンドウ","デバッグ用です１",YESNOCANCE,EXCLAMATION);
		}else if(#auto_log){
			#auto_log=false;
			$SYSTEM_text_auto_lock=false;
			$SYSTEM_text_auto=true;
	
			//Message("デバッグ用ウィンドウ","デバッグ用です２",YESNOCANCE,EXCLAMATION);
		}
	}

	//２行音声同期番号初期化
	$AddTextCount=1;
}

//メインゲーム内【CallScene後】
function GameMainSet2()
{
	//▽ＣＧデバッグ用セーブデータ作成
	//Save(5000);

	//☆超速全読み設定解除
	Conquest($ConGameName,$GameName2,true);//Main
	Conquest($ConGameName,$GameName,true);//本文Scene

	//▽ＣＧデバッグ用：セーブフォルダの5000フォルダに「シーン名」のファイル名で吐き出し
	//$DEBUG_savepath=String("%s/5000/%s.txt",#SYSTEM_save_path,$GameName);
	//WriteFile($DEBUG_savepath,$DEBUG_cgbglist,false);
	//$DEBUG_cgbglist="";
}

function GameBreak()
{
	//▼ゲームサークルをブレイクする際に
	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@x*", 2000, 0, NULL);
	PrintFadeNut("上背景", 2000, true);

	ClockDelete(0,true);
	TextBoxDelete(0);

	$GameName = "";
	$GameCircle=false;
	//$GameTV=true;

	$SYSTEM_low_thread_priority=false;
	$SYSTEM_save_lock=false;
	$SYSTEM_load_lock=false;
	$SYSTEM_text_auto=false;
}

//■終了用スクリプトの最後に記載
//―――――――――――――――
..EndScript
//―――――――――――――――
function EndScript()
{
	if($GameClose){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("上背景", 1000, true);

		//●総プレイ時間：合計
		#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);

		Exit();
	}else if($GameTV){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("上背景", 1000, true);

		$GameName = "";
		$GameCircle=false;
		$GameTV=true;
	}else if(!$エキストラタイトル){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("上背景", 1000, true);
	}else{
		$GameName = "";
	}
}

//■エキストラ回想用：本編冒頭に仕込む
//―――――――――――――――
..ReConquest
//―――――――――――――――
function ReConquest()
{
	Conquest($ConGameName,$PreGameName,true);
}

//■超速発動初期化
//【Scene先頭】
//―――――――――――――――
..SkipOut
//―――――――――――――――
function SkipOut()
{
	if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}
	Conquest($ConGameName,$GameName2,true);

	SetVolume("@*", 0, 0, NULL);
	ClearFadeAll(0,true);

	//▽作品によりけり（ボックス等消去）
	Fade("@box*", 0, 0, null, true);
	Fade("@Fw*",0,0,null,true);

	#SYSTEM_skip_express_minimum_time+=0;

	Wait(64);
}

//【Box内】
//―――――――――――――――
..BoxOut
//―――――――――――――――
function BoxOut()
{
	#SYSTEM_skip_express_minimum_time=0;

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}

		SetVolume("@*", 0, 0, NULL);
		ClearFadeAll(0,true);

		//▽作品によりけり（ボックス等消去）
		Fade("@box*", 0, 0, null, true);
		Fade("@Fw*",0,0,null,true);

		#SYSTEM_skip_express_minimum_time+=0;
		Escape(3);
	}
}


//□デバッグ用：CGリスト吐出し用
//―――――――――――――――
..DEBUG_cgbgcorrect
//―――――――――――――――
/*
function DEBUG_cgbgcorrect($filename)
{
	if(Strstr($filename,"bg")&&!Strstr($DEBUG_cgbglist,$filename)){
		//ファイル名に'bg'という文字列があり、なおかつ初見の場合はリストに追加
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}else if(Strstr($filename,"ev")&&!Strstr($DEBUG_cgbglist,$filename)){
		//ファイル名に'ev'という文字列があり、なおかつ初見の場合はリストに追加
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}
}
*/


//■プレイ時間マクロ
//=============================================================================//
.//総プレイ時間
//=============================================================================//
function GetTime()
{
	//●総プレイ時間：合計
	#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);
	//●総プレイ時間：計測開始
	#BEGIN_TIME=Time();
}


//■章タイトル分離マクロ
//=============================================================================//
.//総プレイ時間
//=============================================================================//
/*
//鬼哭街でも使用//鬼哭街では$章番号の引数をとる
function SceneChange($章番号)
{
	//鬼哭街用処理
	if($章番号>1){
		Enter1line();
	}

	$ChapterNum=$章番号;
	$ChapterName=String("Episode%02d",$ChapterNum);
	VariableValue(#,$ChapterName,true);

	if($章番号==1){$章題="章ノ一　鬼哭雨夜";}
	else if($章番号==2){$章題="章ノ二　機拳功剣";}
	else if($章番号==3){$章題="章ノ三　恩讐追想";}
	else if($章番号==4){$章題="章ノ四　浦東地獄変";}
	else if($章番号==5){$章題="章ノ五　驟雨血風";}
	else if($章番号==6){$章題="章ノ六　愛憎之園";}
	$章間挿入="　　　　"+$章題;

	SetBacklog("　",null,null);
	SetBacklog($章間挿入,null,null);
	SetBacklog("　",null,null);

	Enter1line();
	//鬼哭街用処理ここまで
	
	if(#SceneSkip){
		//スキップより超速を先に設定する
		#SYSTEM_skip_express=false;
		$SYSTEM_skip=false;
		//$SYSTEM_text_auto=false;
	}
}
*/
//バックログでのファイルとファイルの間に１行入れる用
function Enter1line()
{
	SetBacklog("　",null,null);
}




//■スクリプトにおいてテキストを定義するマクロコマンド
//=============================================================================//
.//テキスト定義
//=============================================================================//

//テキストアイコンを途中で変えたい場合はお使いください
//―――――――――――――――
..TextIconSet()
//―――――――――――――――
//▽通常
function TextIconSet()
{
	//改行
	$SYSTEM_text_icon_line="cg/sys/icon/N/line/next_%02d.png#2";
	//改ページ
	$SYSTEM_text_icon_page="cg/sys/icon/N/page/next_%02d.png#2";
	//自動文字送り
	$SYSTEM_text_icon_auto="cg/sys/icon/N/auto/auto_%02d.png#2";
}
function TextIconSet2()
{
	//改行
	$SYSTEM_text_icon_line="cg/sys/icon/N/line/next_%02d.png#2";
	//改ページ
	$SYSTEM_text_icon_page="cg/sys/icon/N/page/next_%02d.png#2";
	//自動文字送り
	$SYSTEM_text_icon_auto="cg/sys/icon/N/auto2/auto_%02d.png#2";
}

//▽暴露
function TextIconSetB()
{
	//改行
	$SYSTEM_text_icon_line="cg/sys/icon/B/line/next_%02d.png#2";
	//改ページ
	$SYSTEM_text_icon_page="cg/sys/icon/B/page/next_%02d.png#2";
	//自動文字送り
	$SYSTEM_text_icon_auto="cg/sys/icon/B/auto/auto_%02d.png#2";
}
function TextIconSetB2()
{
	//改行
	$SYSTEM_text_icon_line="cg/sys/icon/B/line/next_%02d.png#2";
	//改ページ
	$SYSTEM_text_icon_page="cg/sys/icon/B/page/next_%02d.png#2";
	//自動文字送り
	$SYSTEM_text_icon_auto="cg/sys/icon/B/auto2/auto_%02d.png#2";
}

//▽暴露白
function TextIconSetW()
{
	//改行
	$SYSTEM_text_icon_line="cg/sys/icon/W/line/next_%02d.png#2";
	//改ページ
	$SYSTEM_text_icon_page="cg/sys/icon/W/page/next_%02d.png#2";
	//自動文字送り
	$SYSTEM_text_icon_auto="cg/sys/icon/W/auto/auto_%02d.png#2";
}
function TextIconSetW2()
{
	//改行
	$SYSTEM_text_icon_line="cg/sys/icon/W/line/next_%02d.png#2";
	//改ページ
	$SYSTEM_text_icon_page="cg/sys/icon/W/page/next_%02d.png#2";
	//自動文字送り
	$SYSTEM_text_icon_auto="cg/sys/icon/W/auto2/auto_%02d.png#2";
}

//▽ライム
function TextIconSetL()
{
	//改行
	$SYSTEM_text_icon_line="cg/sys/icon/L/line/next_%02d.png#4";
	//改ページ
	$SYSTEM_text_icon_page="cg/sys/icon/L/page/next_%02d.png#4";
	//自動文字送り
	$SYSTEM_text_icon_auto="cg/sys/icon/L/auto/auto_%02d.png#4";
}



//顔ウィンドウ用窓
//―――――――――――――――
..Fw
//―――――――――――――――
//===============================
...アイコン
//===============================
function FwIcon()
{
	$InFw=true;

	if($TEXTBOX_TYPE=="暴露"){
		TextIconSetB2();
	}else if($TEXTBOX_TYPE=="暴露白"){
		TextIconSetW2();
	}else if($TEXTBOX_TYPE!="ライム"){
		TextIconSet2();
	}

	//■プロセス停止用
	StopFwPro();
}

//===============================
...Fwセットマクロ
//===============================
function FwSet($PreFwPic)
{
	$FwCount+=1;
	if($FwCount>10){$FwCount=0;}

	if($TEXTBOX_TYPE=="ライム"){
		$FwNutName=String("@FwMask02/%02d",$FwCount);
		$FwY=338;
	}else{
		$FwNutName=String("@FwMask01/%02d",$FwCount);
		$FwY=338;
	}

	$FwAlias=String("FwNut%02d",$FwCount);
	$FwNutPro=String("@FwNut%02d",$FwCount);

	if(Strstr($PreFwPic, "fw")){
		$FwData="cg/fw/"+$PreFwPic+".png";
		$FwType="fw";
	}else{
		$FwData="cg/nw/"+$PreFwPic+".png";
		$FwType="nw";
	}

	Request($FwNutName, UnLock);
	CreateTexture($FwNutName, 19001, -1000, -1000, $FwData);
	SetAlias($FwNutName, $FwAlias);
	Fade($FwNutPro, 0, 0, null, true);
	Request($FwNutPro, Hideable);
	if($OnFWPRO_kick){
		Request($FwNutPro, Lock);
	}
	//ちらつきバグ対策！
	Move($FwNutPro, 0, 0, $FwY, null, false);
}

//===============================
....ＦＷ表示マクロ
//===============================
function FwMacro()
{
	if($TypeBeginIn){
		//▽TypeBeginの先頭のみ
		if(!$OnFW&&!$OnFWPRO&&$OnFWPRO_kick){
			StopFwPro();
			Delete("@FwNut*");
			$OnFWPRO_kick=false;
		}

		if($OnFW||$OnFWPRO){
			//■立ち絵プロセス停止用
			PostSt();
		}

		if($OnFW){
			Fade($TypeBeginNutF, 0, 1000, null, false);

			if($OnFWPRO_kick){
				//★ロック設置
				LockVideo(true);
				Delete("@FwNut*");
				Request("@FwNut*", UnLock);
				Fade($FwNut, 0, 1000, null, false);
				//★ロック設置
				LockVideo(false);
				$OnFWPRO_kick=false;
			}else{
				Fade($FwNut, 0, 1000, null, false);
				Fade($PreFwNut, 0, 0, null, true);
				Delete($PreFwNut);
			}

			$OnFW=false;
		}


		if($OnFWPRO){
			$PreFwNut=$FwNut;
			$FwNut=$FwNutPro;
			Request("顔窓プロセス", Start);
			Request("顔窓プロセス", Disused);

			$OnFWPRO_kick=true;
			$OnFWPRO=false;
		}

		$InFw=false;
	}
}



//===============================
...Fwセット
//===============================
//―――――――――
....//▽通常表示
//―――――――――
function Fw($FwPic)
{
	//■アイコン設定
	FwIcon();

	//■ＦＷ定義
	$PreFwNut=$FwNut;
	FwSet($FwPic);
	$FwNut=$FwNutPro;
	$OnFW=true;

	//★ＦＷマクロ
	FwMacro();
}

function FwProSetMacro()
{
	if($FwPic=="無し"){

	}else if($FwPic=="引継"){
		$PreFwNut=$FwNut;
		$FwPic=$PreFwPic;
		FwSet($FwPic);
		$FwNut=$FwNutPro;
		$OnFW=true;
	}else{
		$PreFwNut=$FwNut;
		FwSet($FwPic);
		$FwNut=$FwNutPro;
		$OnFW=true;
	}
}

//―――――――――
....//▽出す
//―――――――――
function FwPro($FwPic,$FwWait1,$FwPic1)
{
	//■アイコン設定
	FwIcon();

	//■ＦＷ定義
	FwProSetMacro();

	//■ＦＷ定義（プロセス用）
	FwSet($FwPic1);
	$FwNut1=$FwNutPro;

	CreateProcess("顔窓プロセス", 150, 0, 0, "FadeFwMacro");
	SetAlias("顔窓プロセス", "顔窓プロセス");
	$OnFWPRO=true;

	//★ＦＷマクロ
	FwMacro();
}

function FadeFwMacro(){

	Wait($FwWait1);
	Fade($TypeBeginNutF, 0, 1000, null, false);
	Fade($FwNut1, 0, 1000, null, false);
	Fade($PreFwNut, 0, 0, null, true);

	Delete($PreFwNut);

	$OnFWPRO_kick=false;
	Wait(16);
}

//―――――――――
....//▽出す⇒出す
//―――――――――
function FwPro2($FwPic,$FwWait1,$FwPic1,$FwWait2,$FwPic2)
{
	//■アイコン設定
	FwIcon();

	//■ＦＷ定義
	FwProSetMacro();

	//■ＦＷ定義（プロセス用）
	FwSet($FwPic1);
	$FwNut1=$FwNutPro;
	FwSet($FwPic2);
	$FwNut2=$FwNutPro;

	CreateProcess("顔窓プロセス", 150, 0, 0, "FadeFadeFwMacro");
	SetAlias("顔窓プロセス", "顔窓プロセス");
	$OnFWPRO=true;

	//★ＦＷマクロ
	FwMacro();
}

function FadeFadeFwMacro(){
	Wait($FwWait1);
	Fade($TypeBeginNutF, 0, 1000, null, false);
	Fade($FwNut1, 0, 1000, null, false);
	Fade($PreFwNut, 0, 0, null, true);
	Delete($PreFwNut);

	Wait($FwWait2);
	Fade($FwNut2, 0, 1000, null, true);
	Fade($FwNut1, 0, 0, null, true);
	Delete($FwNut1);

	$OnFWPRO_kick=false;
	Wait(16);
}


//―――――――――
....//▽出す⇒出す⇒出す
//―――――――――
function FwPro3($FwPic,$FwWait1,$FwPic1,$FwWait2,$FwPic2,$FwWait3,$FwPic3)
{
	//■アイコン設定
	FwIcon();

	//■ＦＷ定義
	FwProSetMacro();

	//■ＦＷ定義（プロセス用）
	FwSet($FwPic1);
	$FwNut1=$FwNutPro;
	FwSet($FwPic2);
	$FwNut2=$FwNutPro;
	FwSet($FwPic3);
	$FwNut3=$FwNutPro;

	CreateProcess("顔窓プロセス", 150, 0, 0, "FadeFadeFwMacro");
	SetAlias("顔窓プロセス", "顔窓プロセス");
	$OnFWPRO=true;

	//★ＦＷマクロ
	FwMacro();
}

function FadeFadeFwMacro(){
	Wait($FwWait1);
	Fade($TypeBeginNutF, 0, 1000, null, false);
	Fade($FwNut1, 0, 1000, null, false);
	Fade($PreFwNut, 0, 0, null, true);
	Delete($PreFwNut);

	Wait($FwWait2);
	Fade($FwNut2, 0, 1000, null, true);
	Fade($FwNut1, 0, 0, null, true);
	Delete($FwNut1);

	Wait($FwWait3);
	Fade($FwNut3, 0, 1000, null, true);
	Fade($FwNut2, 0, 0, null, true);
	Delete($FwNut2);

	$OnFWPRO_kick=false;
	Wait(16);
}

//―――――――――
....//▽出す⇒出す⇒出す⇒出す
//―――――――――
function FwPro4($FwPic,$FwWait1,$FwPic1,$FwWait2,$FwPic2,$FwWait3,$FwPic3,$FwWait4,$FwPic4)
{
	//■アイコン設定
	FwIcon();

	//■ＦＷ定義
	FwProSetMacro();

	//■ＦＷ定義（プロセス用）
	FwSet($FwPic1);
	$FwNut1=$FwNutPro;
	FwSet($FwPic2);
	$FwNut2=$FwNutPro;
	FwSet($FwPic3);
	$FwNut3=$FwNutPro;
	FwSet($FwPic4);
	$FwNut4=$FwNutPro;

	CreateProcess("顔窓プロセス", 150, 0, 0, "FadeFadeFwMacro");
	SetAlias("顔窓プロセス", "顔窓プロセス");
	$OnFWPRO=true;

	//★ＦＷマクロ
	FwMacro();
}

function FadeFadeFwMacro(){
	Wait($FwWait1);
	Fade($TypeBeginNutF, 0, 1000, null, false);
	Fade($FwNut1, 0, 1000, null, false);
	Fade($PreFwNut, 0, 0, null, true);
	Delete($PreFwNut);

	Wait($FwWait2);
	Fade($FwNut2, 0, 1000, null, true);
	Fade($FwNut1, 0, 0, null, true);
	Delete($FwNut1);

	Wait($FwWait3);
	Fade($FwNut3, 0, 1000, null, true);
	Fade($FwNut2, 0, 0, null, true);
	Delete($FwNut2);

	Wait($FwWait4);
	Fade($FwNut4, 0, 1000, null, true);
	Fade($FwNut3, 0, 0, null, true);
	Delete($FwNut3);

	$OnFWPRO_kick=false;
	Wait(16);
}


//―――――――――
....//▽後始末用
//―――――――――
function StopFwPro()
{
	if($OnFWPRO_kick){
		Request("@顔窓プロセス", Stop);
		Delete("@顔窓プロセス");
		WaitAction("@顔窓プロセス", null);
	}
}

function StopFwPro2()
{
	if($OnFWPRO_kick){
		Request("@顔窓プロセス", Stop);
		Delete("@顔窓プロセス");
		WaitAction("@顔窓プロセス", null);

		$OnFWPRO_kick=false;
	}
}


//―――――――――
....//▽デリート
//―――――――――
function DeleteFw()
{
//	Request("@FwNut*", UnLock);

	StopFwPro2();

	Fade($TypeBeginNutF, 0, 0, null, false);
	Fade($FwNut, 0, 0, null, false);
//	Request($FwNut, Disused);

	Request("@FwNut*", UnLock);
	Delete("@FwNut*");

	if($TEXTBOX_TYPE=="暴露"){
		TextIconSetB();
	}else if($TEXTBOX_TYPE=="暴露白"){
		TextIconSetW();
	}else if($TEXTBOX_TYPE!="ライム"){
		TextIconSet();
	}
}









....Fwマスクver
function FwMask($FwMaskX,$FwMaskY,$FwMaskImg)
{
	//■アイコン設定
	FwIcon();

	$PreFwNut=$FwNut;

	$FwCount+=1;
	if($FwCount>10){$FwCount=0;}

	if($TEXTBOX_TYPE=="ライム"){
		$FwNutName=String("@FwMask02/%02d",$FwCount);
	}else{
		$FwNutName=String("@FwMask01/%02d",$FwCount);
	}

	$FwAlias=String("FwNut%02d",$FwCount);
	$FwNut=String("@FwNut%02d",$FwCount);

	$FwData=$FwMaskImg;//変更箇所

	CreateTexture($FwNutName, 19001, -1000,1000, $FwData);
	SetAlias($FwNutName, $FwAlias);
	Fade($FwNut, 0, 0, null, true);
	Request($FwNut, Hideable);

	//ちらつきバグ対策！
	Move($FwNut, 0, $FwMaskX, $FwMaskY, null, false);

	$OnFW=true;

	//★ＦＷマクロ
	FwMacro();
}














//通常ウィンドウ縦用
//―――――――――――――――
..SetText
//―――――――――――――――
function SetText()
{
	SetMainTextBox();
	SetTextBase();
}

function SetMainTextBox()
{
	$LoadTextWsize=600;
	$LoadTextHsize=150;
	$SetTextX=347;//352
	$SetTextY=429;//427

	if($TEXTBOX_TYPE=="ライム"){
		TextIconSetL();
		$TypeBeginNut="@boxHL";
		$TypeBeginNutF="@boxFL";
		$TypeBeginIconX=951;
		$TypeBeginIconY=475;
	}else if($TEXTBOX_TYPE=="暴露"){
		if(!$OnFW&&!$OnFWPRO){TextIconSetB();}
		$TypeBeginNut="@boxHB";
		$TypeBeginNutF="@boxFB";
		$TypeBeginIconX=54;//957
		$TypeBeginIconY=412;//457
	}else if($TEXTBOX_TYPE=="暴露白"){
		if(!$OnFW&&!$OnFWPRO){TextIconSetW();}
		$TypeBeginNut="@boxHW";
		$TypeBeginNutF="@boxFW";
		$TypeBeginIconX=54;//957
		$TypeBeginIconY=412;//457
	}else{
		if(!$OnFW&&!$OnFWPRO){TextIconSet();}
		$TypeBeginNut="@boxHN";
		$TypeBeginNutF="@boxFN";
		$TypeBeginIconX=54;//957
		$TypeBeginIconY=412;//457
	}
}


//本文用のテキスト設定(SecondTextでも使用)
function SetMainTextFont()
{
	SetFont("ＭＳ ゴシック",20, FFFFFF, 222222,300,AROUND);
}
//本文用の既読テキスト設定(SecondTextでも使用)
function SetMainReadTextFont()
{
	SetFont("ＭＳ ゴシック",20, 41b3ff, 222222,300,AROUND);
}

function SetTextBase()
{
		SetMainTextFont();
		LoadText($構文名,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,$LoadTextHsize,0,26);
		Move($SYSTEM_present_text, 0, $SetTextX, $SetTextY, null, true);
		Request($SYSTEM_present_text, Erase);
		Request($SYSTEM_present_text, Lock);
		Request($SYSTEM_present_text, Hideable);
}


//真ん中表示用
//―――――――――――――――
..SetTextM
//―――――――――――――――
function SetTextM()
{
	$LoadTextWsize = 756;
	$LoadTextHsize = 150;
	$SetTextX = 0;
	$SetTextY = 0;
	$TypeBeginIconX = 1000;//-32768
	$TypeBeginIconY = 1000;//-32768

	SetTextBase();

	$SetTextX = (ImageHorizon($SYSTEM_present_text)/2*-1)+512;
	$SetTextY = (ImageVertical($SYSTEM_present_text)/2*-1)+288;
	Move($SYSTEM_present_text, 0, $SetTextX, $SetTextY, null, true);
}











//■ボックスを描画するのとテキストをタイピングする動作をまとめて実行するマクロ
//=============================================================================//
.//タイピングマクロ
//=============================================================================//

//―――――――――――――――
..TypeBegin（ボックス有り：タイピング）
//―――――――――――――――
function TypeBegin()
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($TEXTBOX_TYPE=="ライム"){
		Fade("@boxBL", $BoxFadeTime, 1000, null, false);
	}

	//ボックス表示
	Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//★ＦＷマクロ
	FwMacro();

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, true);

	$TypeBeginIn=false;
	BoxOut();
}
//―――――――――――――――
..TypeBegin（ボックス有り：タイピング：NoLog）
//―――――――――――――――
function TypeBeginNL()
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Request($textnumber, NoLog);

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($TEXTBOX_TYPE=="ライム"){
		Fade("@boxBL", $BoxFadeTime, 1000, null, false);
	}

	//ボックス表示
	Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//★ＦＷマクロ
	FwMacro();

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, true);

	$TypeBeginIn=false;
	BoxOut();
}
//―――――――――――――――
..TypeBeginN（ボックス有り：タイピング、テキスト残り）
//―――――――――――――――
function TypeBeginN()
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($TEXTBOX_TYPE=="ライム"){
		Fade("@boxBL", $BoxFadeTime, 1000, null, false);
	}

	//ボックス表示
	Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//★ＦＷマクロ
	FwMacro();

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	//Request($textnumber, Disused);
	//Fade($textnumber, 0, 0, null, true);

	$TypeBeginIn=false;
	BoxOut();
}
//―――――――――――――――
..TypeBeginT（ボックス無し：タイピング）
//―――――――――――――――
function TypeBeginT()
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	//ボックス表示
	//Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//FwMacro();

	Delete($PreFwNut);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, true);

	$TypeBeginIn=false;
	BoxOut();
}

//―――――――――――――――
..TypeBeginF（ボックス無し：フェード）
//―――――――――――――――
function TypeBeginF($TextFadeTime)
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	//ボックス表示
	//Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//FwMacro();

	Delete($PreFwNut);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	$TypeBeginIn=false;
	BoxOut();
}

//―――――――――――――――
..TypeBeginFN（ボックス無し：フェード、処理後デリート無し）
//―――――――――――――――
function TypeBeginFN($TextFadeTime)
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	//ボックス表示
	//Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//FwMacro();

	Delete($PreFwNut);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
//	Request($textnumber, Disused);
//	Fade($textnumber, 0, 0, null, false);

	$TypeBeginIn=false;
	BoxOut();
}

//―――――――――――――――
..TypeBeginF2（ボックス有り：フェード）
//―――――――――――――――
function TypeBeginF2($TextFadeTime)
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($TEXTBOX_TYPE=="ライム"){
		Fade("@boxBL", $BoxFadeTime, 1000, null, false);
	}

	//ボックス表示
	Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//★ＦＷマクロ
	FwMacro();

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	$TypeBeginIn=false;
	BoxOut();
}


//―――――――――――――――
..TypeBeginA（ボックス有り：タイピング：オート進行用）
//―――――――――――――――
function TypeBeginA($TypeBeginWaitA)
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($TEXTBOX_TYPE=="ライム"){
		Fade("@boxBL", $BoxFadeTime, 1000, null, false);
	}

	//ボックス表示
	Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//★ＦＷマクロ
	FwMacro();

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);
	WaitPlay($textnumber, null);

	Wait($TypeBeginWaitA);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, true);

	$TypeBeginIn=false;
	BoxOut();
}

//―――――――――――――――
..TypeBeginAN（ボックス無し：タイピング：オート進行用）
//―――――――――――――――
function TypeBeginAN($TypeBeginWaitA)
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	//ボックス表示
	//Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//FwMacro();

	Delete($PreFwNut);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);
	WaitPlay($textnumber, null);

	Wait($TypeBeginWaitA);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, true);

	$TypeBeginIn=false;
	BoxOut();
}


//―――――――――――――――
..TypeBeginAF（ボックス無し：フェード：オート進行用）
//―――――――――――――――
function TypeBeginAF($TextFadeTime,$TypeBeginWaitA)
{
	$TypeBeginIn=true;

	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	//ボックス表示
	//Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//FwMacro();

	Delete($PreFwNut);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);
	WaitPlay($textnumber, null);

	Wait($TypeBeginWaitA);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	$TypeBeginIn=false;
	BoxOut();
}


//―――――――――――――――
..TextBoxDelete
//―――――――――――――――
function TextBoxDelete($BoxDeleteTime)
{
	StopFwPro2();

	Fade("@FwNut*",$BoxDeleteTime,0,null,false);
	Fade("@box*",$BoxDeleteTime,0,null,true);

	Request("@FwNut*", UnLock);
	Delete("@FwNut*");
}






//■ちょっと特殊なタイピング
//=============================================================================//
.//テキスト二行同時表示
//=============================================================================//
//---------------------------------------------------------------//
..AddText
//---------------------------------------------------------------//
function AddText($AddTextLine,$AddTextText,$AddTextClass,$AddTextVoice,$AddTextPlay,$AddVoicePlay,$AddVoiceVolume)
{
	Delete("LogText*");
	Delete("AddText*");
	Delete("AddVoice*");
	$AddVoiceON=false;

	if($AddVoicePlay){
		$AddTextNus="AddVoice"+$AddTextClass+$AddTextLine;
		CreateVOICEEX($AddTextNus,$AddTextVoice,$AddTextClass);
		Request($AddTextNus, Lock);
		SetVolume($AddTextNus, 0, $AddVoiceVolume, NULL);
		//SetVolumeEX($AddTextNus, 0, $AddVoiceVolume, null);
	}else{
		$AddTextNus="ParVoice"+$AddTextClass+$AddTextLine;
		CreateVOICEEX($AddTextNus,$AddTextVoice,$AddTextClass);
		SetVolume($AddTextNus, 0, $AddVoiceVolume, NULL);
		//SetVolumeEX($AddTextNus, 0, $AddVoiceVolume, null);
	}

	//音声同期
	$LOCAL_text_interval=DurationTime($AddTextNus)/Strlen($AddTextText);
	Delete("ParVoice*");

	//既読未読フォント
	if(VariableValue(#,Substr($GameName,0,Strstr($GameName,".nss")-1)+"_Add"+$AddTextCount)&&#SYSTEM_read_text_color_change){
		SetMainReadTextFont();
	}else{
		SetMainTextFont();
	}

	$TypeBeginTextX=$SetTextX;
	$TypeBeginTextY=($AddTextLine-1)*40+$SetTextY;

	if($AddTextPlay){
		$AddTextNut="AddText"+$AddTextClass+$AddTextLine;
	}else{
		$AddTextNut="LogText"+$AddTextClass+$AddTextLine;//（対処案件）
	}

	CreateText($AddTextNut, 20001, $TypeBeginTextX, $TypeBeginTextY, Auto, Auto, $AddTextText);
	SetAlias($AddTextNut,$AddTextNut);
	Request($AddTextNut, NoLog);
	Request($AddTextNut, Erase);
	Request($AddTextNut, Hideable);
	Request($AddTextNut, Lock);

	if(!$AddTextPlay){
		Fade("LogText*", 0, 0, null, true);//（対処案件）
		Request("LogText*", Enter);//（対処案件）
		Request("LogText*", PushText);//（対処案件）
	}

	if(!$AddTextVoice){
		SetBacklog($AddTextText, "NULL", "NULL");
	}else{
		$AddTextVoice="voice/"+$AddTextVoice;
		SetBacklog($AddTextText, $AddTextVoice, $AddTextClass);
	}
}



//―――――――――――――――
..TypeBeginD（複数行ボックス：タイピング）
//―――――――――――――――
function TypeBeginD()
{
	//▽絶対的音声同期
	//$SYSTEM_ignore_voice_sync_text=true;
	//$SYSTEM_ignore_text_speed=true;

	Request($textnumber, UnLock);
	Delete($textnumber);

	//既読判別用
	VariableValue(#,Substr($GameName,0,Strstr($GameName,".nss")-1)+"_Add"+$AddTextCount,true);
	$AddTextCount++;

	//同期による文字速度調整
	if(#SYSTEM_sync_voice_and_text){
		$SYSTEM_text_interval=$LOCAL_text_interval;
	}

	$TypeBeginIn=true;

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Request($textnumber, NoLog);

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($TEXTBOX_TYPE=="ライム"){
		Fade("@boxBL", $BoxFadeTime, 1000, null, false);
	}

	//ボックス表示
	Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	//★ＦＷマクロ
	FwMacro();

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	//===========================================

	//ボイス再生
	Request("AddVoice*", Play);
	SetLoop("AddVoice*", false);
	Request("AddVoice*", Disused);

	//複数行エンター
	Request("AddText*", Enter);

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	//複数行消去
	Request("LogText*", UnLock);
	Request("AddText*", UnLock);
	Request("AddVoice*", UnLock);

	Fade("LogText*", 0, 0, null, true);
	Delete("LogText*");
	Fade("AddText*", 0, 0, null, true);
	Delete("AddText*");
	if(#SYSTEM_click_break_voice){
		Delete("AddVoice*");
	}
	$AddVoiceON=true;

	//▽絶対的音声同期解除
	//$SYSTEM_ignore_voice_sync_text=false;
	//$SYSTEM_ignore_text_speed=false;

	$SYSTEM_text_interval=48;

	$TypeBeginIn=false;
	BoxOut();
}


//---------------------------------------------------------------//
..WaitAddText
//---------------------------------------------------------------//
function WaitAddText()
{
	Fade("LogText*", 0, 1000, null, false);
	Fade($SYSTEM_present_text, 0, 0, null, false);

	if(!#SYSTEM_auto_text_break_voice&&$SYSTEM_text_auto){
		WaitPlay("AddVoice*", null);
	}
}

//---------------------------------------------------------------//
..WaitAddText2
//---------------------------------------------------------------//
function WaitAddText2()
{
	if(!#SYSTEM_auto_text_break_voice&&$SYSTEM_text_auto){
		WaitPlay("AddVoice*", null);
	}
}

//---------------------------------------------------------------//
..TypeAddText（不使用）
//---------------------------------------------------------------//
function TypeAddText()
{
	Request($SYSTEM_present_text, NoLog);
	Request("AddText*", Enter);

	Request("AddVoice*", Play);
	SetLoop("AddVoice*", false);
	Request("AddVoice*", Disused);
}

//---------------------------------------------------------------//
..DeleteAddText（不使用）
//---------------------------------------------------------------//
function DeleteAddText()
{
	Request("LogText*", UnLock);
	Request("AddText*", UnLock);
	Request("AddVoice*", UnLock);

	Fade("LogText*", 0, 0, null, true);
	Delete("LogText*");
	Fade("AddText*", 0, 0, null, true);
	Delete("AddText*");
	if(#SYSTEM_click_break_voice){
		Delete("AddVoice*");
	}
	$AddVoiceON=true;
}











//■CreateTextureの変形
//=============================================================================//
.//CreateTexture系
//=============================================================================//

//▼ノーマル
//透明度0からスタートする「CreateTexture」です
..CreateTextureEX
function CreateTextureEX($CreatePicEX_Nat, 描画優先度, $CreateTexEX_X, $CreateTexEX_Y, $イメージデータ)
{
	//▽ＣＧデバッグ用
//	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEX_Nat, 描画優先度, 1030, 0, $イメージデータ);
	Fade($CreatePicEX_Nat, 0, 0, null, true);
	
	$TATE=576;
	
//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEX_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEX_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-$TATE;//768;
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = $TATE-$CT_EXY;//768;
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-$TATE;//768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	SetAlias($CreatePicEX_Nat, $CreatePicEX_Nat);

	if($CreateTexEX_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEX_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEX_X=="InLeft"){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEX_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
//		$CreateTexEX_X = $CreateTexEX_X-1030;
		Move($CreatePicEX_Nat, 0, 0, @0, null, true);
		Move($CreatePicEX_Nat, 0, $CreateTexEX_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEX_Y=="Middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEX_Y=="middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEX_Y=="InBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEX_Y=="inBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEX_Y=="inbottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		Move($CreatePicEX_Nat, 0, @0, $CreateTexEX_Y, null, true);
	}

}

//エイリアス指定がついただけの「CreateTexture」です
..CreateTextureSP
function CreateTextureSP("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//▽ＣＧデバッグ用
//	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	SetAlias("ナット名", "ナット名");

}

//▼加算
//透明度0からスタートする「CreateTexture」です（加算合成付き）
..CreateTextureEXadd
function CreateTextureEXadd($CreatePicEXadd_Nat, 描画優先度, $CreateTexEXadd_X, $CreateTexEXadd_Y, $イメージデータ)
{
	//▽ＣＧデバッグ用
//	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEXadd_Nat, 描画優先度, 1030, 0, $イメージデータ);

	$TATE=576;

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEXadd_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEXadd_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-$TATE;//768
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = $TATE-$CT_EXY;//768
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-$TATE;//768
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXadd_Nat, AddRender);
	SetAlias($CreatePicEXadd_Nat, $CreatePicEXadd_Nat);
	Fade($CreatePicEXadd_Nat, 0, 0, null, true);

	if($CreateTexEXadd_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXadd_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXadd_X=="InLeft"){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXadd_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXadd_Nat, 0, $CreateTexEXadd_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEXadd_Y=="Middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXadd_Y=="middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXadd_Y=="InBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXadd_Y=="inBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXadd_Y=="inbottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXadd_Nat, 0, @0, $CreateTexEXadd_Y, null, true);
	}
}

//エイリアス指定がついただけの「CreateTexture」です（加算合成付き）
..CreateTextureSPadd
function CreateTextureSPadd("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//▽ＣＧデバッグ用
//	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
}
//▼減算
//透明度0からスタートする「CreateTexture」です（加算合成付き）
..CreateTextureEXsub
function CreateTextureEXsub($CreatePicEXsub_Nat, 描画優先度, $CreateTexEXsub_X, $CreateTexEXsub_Y, $イメージデータ)
{
	//▽ＣＧデバッグ用
//	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEXsub_Nat, 描画優先度, 1030, 0, $イメージデータ);

	$TATE=576;

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEXsub_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEXsub_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-$TATE;//768
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = $TATE-$CT_EXY;//768
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-$TATE;//768
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXsub_Nat, SubRender);
	SetAlias($CreatePicEXsub_Nat, $CreatePicEXsub_Nat);
	Fade($CreatePicEXsub_Nat, 0, 0, null, true);

	if($CreateTexEXsub_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXsub_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXsub_X=="InLeft"){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXsub_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXsub_Nat, 0, $CreateTexEXsub_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEXsub_Y=="Middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXsub_Y=="middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXsub_Y=="InBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXsub_Y=="inBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXsub_Y=="inbottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXsub_Nat, 0, @0, $CreateTexEXsub_Y, null, true);
	}
}

//エイリアス指定がついただけの「CreateTexture」です（減算合成付き）
..CreateTextureSPsub
function CreateTextureSPsub("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//▽ＣＧデバッグ用
//	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
}

//▼オーバーレイ
//透明度0からスタートする「CreateTexture」です（加算合成付き）
..CreateTextureEXover
function CreateTextureEXover($CreatePicEXover_Nat, 描画優先度, $CreateTexEXover_X, $CreateTexEXover_Y, $イメージデータ)
{
	//▽ＣＧデバッグ用
//	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEXover_Nat, 描画優先度, 1030, 0, $イメージデータ);

	$TATE=576;

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEXover_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEXover_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-$TATE;//
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = $TATE-$CT_EXY;//768
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-$TATE;//768
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXover_Nat, OverlayRender);
	SetAlias($CreatePicEXover_Nat, $CreatePicEXover_Nat);
	Fade($CreatePicEXover_Nat, 0, 0, null, true);

	if($CreateTexEXover_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXover_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXover_X=="InLeft"){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXover_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXover_Nat, 0, $CreateTexEXover_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEXover_Y=="Middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXover_Y=="middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXover_Y=="InBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXover_Y=="inBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXover_Y=="inbottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXover_Nat, 0, @0, $CreateTexEXover_Y, null, true);
	}
}


//エイリアス指定がついただけの「CreateTexture」です（オーバーレイ合成付き）
..CreateTextureSPover
function CreateTextureSPover("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//▽ＣＧデバッグ用
//	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
}

//▼乗算
//透明度0からスタートする「CreateTexture」です（加算合成付き）
..CreateTextureEXmul
function CreateTextureEXmul($CreatePicEXmul_Nat, 描画優先度, $CreateTexEXmul_X, $CreateTexEXmul_Y, $イメージデータ)
{
	//▽ＣＧデバッグ用
//	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEXmul_Nat, 描画優先度, 1030, 0, $イメージデータ);

	$TATE=576;

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEXmul_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEXmul_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-$TATE;//768
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = $TATE-$CT_EXY;//768
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-$TATE;//768
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXmul_Nat, MulRender);
	SetAlias($CreatePicEXmul_Nat, $CreatePicEXmul_Nat);
	Fade($CreatePicEXmul_Nat, 0, 0, null, true);

	if($CreateTexEXmul_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXmul_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXmul_X=="InLeft"){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXmul_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXmul_Nat, 0, $CreateTexEXmul_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEXmul_Y=="Middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXmul_Y=="middle"){
		if($CT_EXY == $TATE){//768
			Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= $TATE){//768
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXmul_Y=="InBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXmul_Y=="inBottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXmul_Y=="inbottom"){//768
		if($CT_EXY != $TATE){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXmul_Nat, 0, @0, $CreateTexEXmul_Y, null, true);
	}
}


//エイリアス指定がついただけの「CreateTexture」です（乗算合成付き）
..CreateTextureSPmul
function CreateTextureSPmul("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//▽ＣＧデバッグ用
//	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
}


//=============================================================================//
.//背景・イベント・ＥＦ専用
//=============================================================================//

//▼ノーマル
//透明度0からスタートする「CreateTexture」です
..OnBG
function OnBG(描画優先度,$bgimagedata,$パッチ判定)
{

	//ＣＧライブラリ用のフラグ
	VariableValue(#,$bgimagedata,true);

	if($BgNameN==""||$BgNameN=="OnBG10"){$BgNameN="OnBG01";}
	else if($BgNameN=="OnBG01"){$BgNameN="OnBG02";}
	else if($BgNameN=="OnBG02"){$BgNameN="OnBG03";}
	else if($BgNameN=="OnBG03"){$BgNameN="OnBG04";}
	else if($BgNameN=="OnBG04"){$BgNameN="OnBG05";}
	else if($BgNameN=="OnBG05"){$BgNameN="OnBG06";}
	else if($BgNameN=="OnBG06"){$BgNameN="OnBG07";}
	else if($BgNameN=="OnBG07"){$BgNameN="OnBG08";}
	else if($BgNameN=="OnBG08"){$BgNameN="OnBG09";}
	else if($BgNameN=="OnBG09"){$BgNameN="OnBG10";}

	if($BgNameN01==""){$BgNameN01=$BgNameN;}
	else if($BgNameN02==""){$BgNameN02=$BgNameN;}
	else if($BgNameN03==""){$BgNameN03=$BgNameN;}
	else if($BgNameN04==""){$BgNameN04=$BgNameN;}
	else if($BgNameN05==""){$BgNameN05=$BgNameN;}
	else if($BgNameN06==""){$BgNameN06=$BgNameN;}
	else if($BgNameN07==""){$BgNameN07=$BgNameN;}
	else if($BgNameN08==""){$BgNameN08=$BgNameN;}
	else if($BgNameN09==""){$BgNameN09=$BgNameN;}
	else if($BgNameN10==""){$BgNameN10=$BgNameN;}

	$bgナット = $BgNameN;

	if($パッチ判定=="normal"){
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}else if($パッチ判定=="path"){
		$bgimagedata = "cg2/bg/" + $bgimagedata + ".jpg";
//Path通過したら、初期化【09/01/29】
		$パッチ判定=="";
	}else if(!$パッチ判定){
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}else{
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}

	//▽ＣＧデバッグ用
//	DEBUG_cgbgcorrect($bgimagedata);

	CreateTexture($bgナット, 描画優先度, Center, Middle, $bgimagedata);
	SetAlias($bgナット, $bgナット);
	Fade($bgナット, 0, 0, null, true);
}

...//FadeBG
function FadeBG($描画時間,$待ち)
{
	if($BgNameN01!=""){$ナット名=$BgNameN01;$BgNameN01="";}
	else if($BgNameN02!=""){$ナット名=$BgNameN02;$BgNameN02="";}
	else if($BgNameN03!=""){$ナット名=$BgNameN03;$BgNameN03="";}
	else if($BgNameN04!=""){$ナット名=$BgNameN04;$BgNameN04="";}
	else if($BgNameN05!=""){$ナット名=$BgNameN05;$BgNameN05="";}
	else if($BgNameN06!=""){$ナット名=$BgNameN06;$BgNameN06="";}
	else if($BgNameN07!=""){$ナット名=$BgNameN07;$BgNameN07="";}
	else if($BgNameN08!=""){$ナット名=$BgNameN08;$BgNameN08="";}
	else if($BgNameN09!=""){$ナット名=$BgNameN09;$BgNameN09="";}
	else if($BgNameN10!=""){$ナット名=$BgNameN10;$BgNameN10="";}

	$BGP = 1;

//	SetFont("ＭＳ ゴシック", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);

//描画マクロ
	PreFadeBG();

	$FaceBG2=$FaceBG;
	$FaceBG=$nutBG;
	$BGCP = 1;

	//指定用
	$nutBG=$setBGnut;
	$nutBG2=$astBGnut;

	//アザナエル用：カゴメアソビカラー
	if(#AnotherL){
		KagomeColorAuto(19000,300,true);
	}
}

...//PreFadeBG
function PreFadeBG()
{
	$BGnut = $ナット名;

//ナット名取得　$picnut
		$picBGnut = $FaceBG;
//前ナット名取得　$Prepicnut
		$PrepicBGnut = $FaceBG2;
//前定義が発生してるか確認用
		$BGQ = $BGCP;

//一度定義済み+定義フラグが発生している場合
	if($BGP==1 && $BGQ==0){$FaceBG="名無し";}

//前ナット名正規定義
	$setBGnut = "@"+$BGnut;
//ナット名正規定義
	$astBGnut = $nutBG;
//前ナット名正規定義
	$PreastBGnut ="@"+$PrepicBGnut;

	if($BGP!=0 && $BGQ==0 && $setBGnut!=$astBGnut && $astBGnut!=$PreastBGnut){Fade($astBGnut, 0, 0, null, false);}

	Fade($PreastBGnut, 0, 0, null, false);

	if($BGQ!=0 && $setBGnut!=$PreastBGnut && $astBGnut!=$PreastBGnut){Delete($PreastBGnut);}

	if($BGP==1 && $BGQ==0){
		Fade($setBGnut, $描画時間, 1000, null, false);
	}else if($BGP==1 && $setBGnut!=$astBGnut){
		Fade($astBGnut, $描画時間, 0, Axl3, false);
		Fade($setBGnut, $描画時間, 1000, Dxl2, false);
		Request($astBGnut, Disused);
	}else if($BGP==0){
		Fade($astBGnut, $描画時間, 0, null, false);
		Request($astBGnut, Disused);
	}

	if($待ち==true)
	{
		WaitAction($setBGnut, null);

		if($StP==0){
			WaitAction($astBGnut, null);
		}

	}
	else if($待ち != false)
	{
		Wait($待ち);
	}
	else
	{
	}

}


//■CreateColorの変形
//=============================================================================//
.//CreateColor系
//=============================================================================//

//▼ノーマル
//透明度0からスタートする「CreateColor」です
..CreateColorEX
function CreateColorEX("ナット名", 描画優先度, イメージデータ)
{

	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);

}

//エイリアス指定がついただけの「CreateColor」です
..CreateColorSP
function CreateColorSP("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	SetAlias("ナット名", "ナット名");
}

//▼加算
//透明度0からスタートする「CreateColor」です（加算合成付き）
..CreateColorEXadd
function CreateColorEXadd("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);
}

//エイリアス指定がついただけの「CreateColor」です（加算合成付き）
..CreateColorSPadd
function CreateColorSPadd("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
}

//▼減算
//透明度0からスタートする「CreateColor」です（減算合成付き）
..CreateColorEXsub
function CreateColorEXsub("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);
}

//エイリアス指定がついただけの「CreateColor」です（減算合成付き）
..CreateColorSPsub
function CreateColorSPsub("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
}


//▼オーバーレイ
//透明度0からスタートする「CreateColor」です（オーバーレイ合成付き）
..CreateColorEXover
function CreateColorEXover("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);
}

//エイリアス指定がついただけの「CreateColor」です（オーバーレイ合成付き）
..CreateColorSPover
function CreateColorSPover("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
}

//▼乗算
//透明度0からスタートする「CreateColor」です（乗算合成付き）
..CreateColorEXmul
function CreateColorEXmul("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);
}

//エイリアス指定がついただけの「CreateColor」です（乗算合成付き）
..CreateColorSPmul
function CreateColorSPmul("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
}



//■CreateMovieの変形
//=============================================================================//
.//CreateMovie系
//=============================================================================//

//▼ノーマル
//透明度0からスタートする「CreateMovie」です
..CreateMovieEX
function CreateMovieEX("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です
..CreateMovieSP
function CreateMovieSP("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	SetAlias("ナット名", "ナット名");
}

..CreateMovieSPvol
function CreateMovieSPvol("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ",$音量)
{
	//コンフィグのseと音量を同期、ムービー再生中のse音量変更には対応してない
	if(#SYSTEM_sound_se){$mv_vol=#SYSTEM_sound_volume_se*$音量/1000;
	}else{$mv_vol=0;}
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ",$mv_vol);
	SetAlias("ナット名", "ナット名");
}
function CreateOPMovieSPvol("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ",$音量)
{
	//コンフィグのbgmと音量を同期、ムービー再生中のbgm音量変更には対応してない
	if(#SYSTEM_sound_bgm){$mv_vol=#SYSTEM_sound_volume_bgm*$音量/1000;
	}else{$mv_vol=0;}
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ",$mv_vol);
	SetAlias("ナット名", "ナット名");
}

//▼加算
//透明度0からスタートする「CreateMovie」です（加算合成付き）
..CreateMovieEXadd
function CreateMovieEXadd("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です（加算合成付き）
..CreateMovieSPadd
function CreateMovieSPadd("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
}

//▼減算
//透明度0からスタートする「CreateMovie」です（減算合成付き）
..CreateMovieEXsub
function CreateMovieEXsub("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です（減算合成付き）
..CreateMovieSPsub
function CreateMovieSPsub("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
}

//▼オーバーレイ
//透明度0からスタートする「CreateMovie」です（オーバーレイ合成付き）
..CreateMovieEXover
function CreateMovieEXover("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です（オーバーレイ合成付き）
..CreateMovieSPover
function CreateMovieSPover("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
}

//▼乗算
//透明度0からスタートする「CreateMovie」です（乗算合成付き）
..CreateMovieEXmul
function CreateMovieEXmul("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です（乗算合成付き）
..CreateMovieSPmul
function CreateMovieSPmul("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
}

//コンフィグのムービースキップと既読フラグでのクリックスキップでの再生
..MovieSkipPlay
function MovieSkipPlay($ナット名,$変数名)
{
	if(VariableValue(#,$変数名)){
		$waittime=RemainTime($ナット名);
		//CreateText("tt21", 200, 10, 10, 500, 40, "waittime=<VALUE name=$waittime>|");
		WaitKey($waittime);
	}else{
		if(#LOCAL_break_play_movie){
			$waittime=RemainTime($ナット名);
			WaitKey($waittime);
		}else{WaitPlay($ナット名,true);}
		VariableValue(#,$変数名,true);
		Save(0);
	}
}

//■CreateStencilの変形
//=============================================================================//
.//CreateStencil系
//=============================================================================//
//
..CreateStencilT
function CreateStencilT($ナット名１,$ナット名２,画像優先度,Ｘ位置,Ｙ位置,$画像１,$画像２)
{
	$子ナット名=$ナット名１+"/"+$ナット名２;

	CreateStencil($ナット名１,画像優先度,Ｘ位置,Ｙ位置,128,$画像１,false);
	CreateTexture($子ナット名,画像優先度,Ｘ位置,Ｙ位置,$画像２);

	SetAlias($ナット名１, $ナット名１);
	SetAlias($子ナット名, $ナット名２);

	Fade($ナット名１, 0, 0, null, false);
	Fade($ナット名２, 0, 0, null, true);
}

//
..CreateStencilC
function CreateStencilC($ナット名１,$ナット名２,画像優先度,Ｘ位置,Ｙ位置,$画像１,$画像２)
{
	$子ナット名=$ナット名１+"/"+$ナット名２;

	CreateStencil($ナット名１,画像優先度,Ｘ位置,Ｙ位置,128,$画像１,false);
	CreateColor($子ナット名, 画像優先度, 0, 0, 1024, 576, $画像２);

	SetAlias($ナット名１, $ナット名１);
	SetAlias($子ナット名, $ナット名２);

	Fade($ナット名１, 0, 0, null, false);
	Fade($ナット名２, 0, 0, null, true);
}




//■CreateWindowの変形
//=============================================================================//
.//CreateWindow系
//=============================================================================//
//エイリアス指定の付いた定義命令
..CreateWindowEX
function CreateWindowEX($WindowNut, XPos, YPos, XSet, YSet, 同期)
{
	CreateWindow($WindowNut, 0, XPos, YPos, XSet, YSet, 同期);
	SetAlias($WindowNut,$WindowNut);
}

//■CreateProcessの変形
//=============================================================================//
.//CreateProcess系
//=============================================================================//
//エイリアス指定の付いた定義命令
..CreateProcessEX
function CreateProcessEX($ProcessNameNut, $ProcessNut)
{
	CreateProcess($ProcessNameNut, 0, 0, 0, $ProcessNut);
	SetAlias($ProcessNameNut,$ProcessNameNut);
}


//■CreateMaskの変形
//=============================================================================//
.//CreateMask系
//=============================================================================//
//エイリアス指定の付いた定義命令
..CreateMaskEX
function CreateMaskEX($MaskNameNut, MPri, XPos, YPos, $MaskDataName, 親子)
{
	CreateMask($MaskNameNut, MPri, XPos, YPos, $MaskDataName, 親子);
	SetAlias($MaskNameNut,$MaskNameNut);
}

//■CreateEffectの変形
//=============================================================================//
.//CreateEffect系
//=============================================================================//
//エイリアス指定の付いた定義命令
..CreateEffectSP
function CreateEffectSP($EfNameNut, 優先度, Ｘ座標, Ｙ座標, 幅, 高, $エフェクト)
{
	CreateEffect($EfNameNut, 優先度, Ｘ座標, Ｙ座標, 幅, 高, $エフェクト);
	SetAlias($EfNameNut,$EfNameNut);
}


//■描画マクロ
//=============================================================================//
.//場面転換用
//=============================================================================//
//画面上にこのナット以外全てを残さない
//使用する際は絶対に「Pre」の外で使用してください
..PrintBG
function PrintBG("ナット名",描画優先度)
{
	CreateEffect("ナット名", 描画優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", Lock);

	//ドラマダ特殊処理
	if($NoTextBoxDelete){
		Request("@FwMask*/*", Lock);
	}

	//ドラマダ特殊処理
	$文字=Strstr($GameName, "sl");
	if(!$文字||$GameName=="dm5510sl.nss"){
		Delete("@*");
		Delete("*");
	}

	//ドラマダ特殊処理
	if($NoTextBoxDelete){
		Request("@FwMask*/*", UnLock);
	}

	ByeDefault();
	ByeBye();

	Request("ナット名", UnLock);
}

..PrintBG2
function PrintBG2("ナット名")
{
	CreateTexture("ナット名", 30000, 0, 0, "SCREEN");
	SetAlias("ナット名", "ナット名");
	Request("ナット名", Lock);


	//ドラマダ特殊処理
	if($NoTextBoxDelete){
		Request("@FwMask*/*", Lock);
	}

	//ドラマダ特殊処理
	$文字=Strstr($GameName, "sl");
	if(!$文字||$GameName=="dm5510sl.nss"){
		Delete("@*");
		Delete("*");
	}

	//ドラマダ特殊処理
	if($NoTextBoxDelete){
		Request("@FwMask*/*", UnLock);
	}

	ByeDefault();
	ByeBye();

	Request("ナット名", UnLock);
}

//※新規追加項目
//音関連は消さない用のPrintBG
..PrintGO
function PrintGO("ナット名",描画優先度)
{
	CreateEffect("ナット名", 描画優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", Lock);

	ByeDefault();
	ByeBye();

	Request("ナット名", UnLock);
}

..CreatePlainSP
function CreatePlainSP("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);

}

..CreatePlainSPadd
function CreatePlainSPadd("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", AddRender);

}

..CreatePlainSPsub
function CreatePlainSPsub("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", SubRender);

}

..CreatePlainSPover
function CreatePlainSPover("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", OverlayRender);

}

..CreatePlainSPmul
function CreatePlainSPmul("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", MulRender);

}

..CreatePlainEX
function CreatePlainEX("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");

}

..CreatePlainEXadd
function CreatePlainEXadd("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");
	Request("ナット名", AddRender);

}

..CreatePlainEXsub
function CreatePlainEXsub("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");
	Request("ナット名", SubRender);

}

..CreatePlainEXover
function CreatePlainEXover("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");
	Request("ナット名", OverlayRender);

}

..CreatePlainEXmul
function CreatePlainEXmul("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");
	Request("ナット名", MulRender);

}

//=============================================================================//
.//抹消系
//=============================================================================//
..FadeDelete
function FadeDelete("ナット名", 所要時間, テンポ, 待ち)
{
	Fade("ナット名", 所要時間, 0, テンポ, 待ち);
	Request("ナット名", UnLock);
	Request("ナット名", Disused);

	TakeRatePicAuto();//★徒歩：アザナエルスクリーン
}

..DrawDelete
function DrawDelete("ナット名", 所要時間, 境界, テンポ, "$画像", 待ち)
{
	$Transition = "cg/data/" + "$画像" + ".png";

	DrawTransition("ナット名", 所要時間, 1000, 0, 境界, テンポ, "$Transition", 待ち);
	Request("ナット名", UnLock);
	Request("ナット名", Disused);

	TakeRatePicAuto();//★徒歩：アザナエルスクリーン
}

..PlayDelete
function PlayDelete($プレイナット名, $PlayDeleteTime, $PlayWait)
{
	if($PlayDeleteCount==0){
		$PlayDeleteCount=1;
	}else if($PlayDeleteCount==1){
		$PlayDeleteCount=2;
	}else if($PlayDeleteCount==2){
		$PlayDeleteCount=3;
	}else if($PlayDeleteCount==3){
		$PlayDeleteCount=1;
	}

	$PlayDeleteName="PlayDeleteProcess"+$PlayDeleteCount;

	if($PlayWait==false){
		Fade($プレイナット名, $PlayDeleteTime, 0, null, false);

		CreateProcess("プレイ消去１", 150, 0, 0, $PlayDeleteName);
		SetAlias("プレイ消去１", "プレイ消去１");
		Request("プレイ消去１", Start);
		Request("プレイ消去１", Disused);
	}else{
		Fade($プレイナット名, $PlayDeleteTime, 0, null, true);

		Request($プレイナット名, Stop);
		Delete($プレイナット名);
	}
}

function PlayDeleteProcess1()
{
	Wait($PlayDeleteTime);
	Request($プレイナット名, Stop);
	Delete($プレイナット名);
}

function PlayDeleteProcess2()
{
	Wait($PlayDeleteTime);
	Request($プレイナット名, Stop);
	Delete($プレイナット名);
}

function PlayDeleteProcess3()
{
	Wait($PlayDeleteTime);
	Request($プレイナット名, Stop);
	Delete($プレイナット名);
}



//■移動などの場面転換に関するマクロ
//=============================================================================//
.//暗転処理系
//=============================================================================//

..//暗転処理系ベース

//使用する際は絶対に「Pre」の外で使用してください
..ClearFadeAll
function ClearFadeAll(所要時間,待ち)
{
	CreateColor("クリア黒", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("クリア黒", "クリア黒");
	Fade("クリア黒", 0, 0, null, true);

	Fade("クリア黒", 所要時間, 1000, null, 待ち);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
}

..PrintFadeAll
function PrintFadeAll("ナット名",所要時間,待ち)
{
	CreateColor("ナット名", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Request("ナット名", Lock);

	Fade("ナット名", 所要時間, 1000, null, 待ち);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
	Request("ナット名", UnLock);
}


//使用する際は絶対に「Pre」の外で使用してください
..ClearFadeNut
function ClearFadeNut(所要時間,待ち)
{
	CreateColor("クリア黒", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("クリア黒", "クリア黒");
	Fade("クリア黒", 0, 0, null, true);

	Fade("クリア黒", 所要時間, 1000, null, 待ち);

	ByeDefault();
	ByeBye();

	Delete("クリア黒");
}

..PrintFadeNut
function PrintFadeNut("ナット名",所要時間,待ち)
{
	CreateColor("ナット名", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);

	Fade("ナット名", 所要時間, 1000, null, 待ち);

	ByeDefault();
	ByeBye();
}

//使用する際は絶対に「Pre」の外で使用してください
..ClearDrawAll
function ClearDrawAll(所要時間, 境界, $画像, 待ち)
{
	CreateColor("クリア黒", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("クリア黒", "クリア黒");
	Fade("クリア黒", 0, 0, null, true);

	$Transition = "cg/data/" + $画像 + ".png";
	Fade("クリア黒", 0, 1000, null, false);
	DrawTransition("クリア黒", 所要時間, 0, 1000, 境界, null, $Transition, 待ち);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
}

..PrintDrawAll
function PrintDrawAll("ナット名", 所要時間, 境界, $画像, 待ち)
{
	CreateColor("ナット名", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Request("ナット名", Lock);

	$Transition = "cg/data/" + $画像 + ".png";
	Fade("ナット名", 0, 1000, null, false);
	DrawTransition("ナット名", 所要時間, 0, 1000, 境界, null, $Transition, 待ち);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
	Request("ナット名", UnLock);
}


//使用する際は絶対に「Pre」の外で使用してください
..ClearDrawNut
function ClearDrawNut(所要時間, 境界, $画像, 待ち)
{
	CreateColor("クリア黒", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("クリア黒", "クリア黒");
	Fade("クリア黒", 0, 0, null, true);

	$Transition = "cg/data/" + $画像 + ".png";
	Fade("クリア黒", 0, 1000, null, false);
	DrawTransition("クリア黒", 所要時間, 0, 1000, 境界, null, $Transition, 待ち);

	ByeDefault();
	ByeBye();

	Delete("クリア黒");
}

..PrintDrawNut
function PrintDrawNut("ナット名", 所要時間, 境界, $画像, 待ち)
{
	CreateColor("ナット名", 20000, 0, 0, 1024, 576, "BLACK");
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);

	$Transition = "cg/data/" + $画像 + ".png";
	Fade("ナット名", 0, 1000, null, false);
	DrawTransition("ナット名", 所要時間, 0, 1000, 境界, null, $Transition, 待ち);

	ByeDefault();
	ByeBye();
}

..//暗転処理系応用

//使用する際は絶対に「Pre」の外で使用してください
//ＳＥも一つで対応
..ClearWaitAll
function ClearWaitAll($FadeSoundTime,待ち時間)
{
	CreateColor("絵Clear_BlackWait", 24000, 0, 0, 1024, 576, "BLACK");
	SetAlias("絵Clear_BlackWait", "絵Clear_BlackWait");
	Fade("絵Clear_BlackWait", 0, 0, null, true);

	Request("絵Clear_BlackWait", Lock);


	$SoundTimeCFA=$FadeSoundTime+500;

	SetVolume("@SE*", $SoundTimeCFA, 0, null);
	SetVolume("SE*", $SoundTimeCFA, 0, null);
	SetVolume("@OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("@m*", $SoundTimeCFA, 0, null);
	Fade("絵Clear_BlackWait", $FadeSoundTime, 1000, null, true);

	Wait(待ち時間);
	WaitPlay("@SE*",null);
	WaitPlay("@OnSE*",null);
	WaitPlay("SE*",null);
	WaitPlay("OnSE*",null);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("絵Clear_BlackWait", UnLock);
	Delete("絵Clear_BlackWait");
}



..MoveEX
function MoveEX("ナット名", 所要時間, $Ｘ座標, $Ｙ座標, テンポ, 待ち)
{
	$Ｘ座標プレ = - $Ｘ座標;
	$Ｙ座標プレ = - $Ｙ座標;

	$Ｘ座標マイナス = "@" + $Ｘ座標プレ;
	$Ｙ座標マイナス = "@" + $Ｙ座標プレ;

	$Ｘ座標プラス = "@" + $Ｘ座標;
	$Ｙ座標プラス = "@" + $Ｙ座標;

	Move("ナット名", 0, $Ｘ座標マイナス, $Ｙ座標マイナス, null, true);
	Move("ナット名", 所要時間, $Ｘ座標プラス, $Ｙ座標プラス, テンポ, 待ち);
}





//■変数初期化マクロコマンド
//=============================================================================//
.//初期化
//=============================================================================//
..ByeBye
function ByeBye()
{
//■立ち絵全消去
	ByeAllSt();

//■背景用「OnBG」
	$BgNameN01="";
	$BgNameN02="";
	$BgNameN03="";
	$BgNameN04="";
	$BgNameN05="";
	$BgNameN06="";
	$BgNameN07="";
	$BgNameN08="";
	$BgNameN09="";
	$BgNameN10="";
}

..ByeDefault
function ByeDefault()
{
	Delete("@絵*");
	Delete("絵*");
	Delete("@OnBG*");
	Delete("OnBG*");
	Delete("@背景*");

	//ドラマダ特殊処理
	$文字=Strstr($GameName, "sl");
	if(!$NoTextBoxDelete&&(!$文字||$GameName=="dm5510sl.nss")){
		TextBoxDelete(0);
		$NoTextBoxDelete=false;
	}

	$SYSTEM_full_scene_update=false;

	//ドラマダコイル用
	$coildownON=false;
	$coilnewON=false;
	$coilpictON=false;
	$coilmailON=false;
	$coilmlistON=false;
	$coilphoneON=false;
	$coilphone2ON=false;
	$coilrenON=false;

	$CoilPhone=false;
	$CoilPhone2=false;

	$coildownpriON=false;//CoilDownSetPri用

	$coilphoneNOW="無し";

	//以下ユーザー任意
	$coilintoON=false;//演出消さない
	$coilphoneError=false;//電話直後エラーになる
	$coilraceSoon=false;//履歴の追加をすばやく

	$coilphone2Error=false;//電話直後エラーになる
	$coilrace2Soon=false;//履歴の追加をすばやく

	//アザナエル
	Delete("@OnKG*");
	Delete("@RateWindow/*");
	Delete("@gameview");
}



//■エンディング関係のマクロコマンド
//=============================================================================//
.//エンディング関係
//=============================================================================//
//=============================================================================//
..//★ＥＤ連想
//=============================================================================//
function ArrayEND()
{
	Array($EndName,"共通GD","紅雀BD","ノイズBD","ノイズfBD","ミンクBD","クリアBD","蓮BD","ウイトリBD", "真相蓮GD", "紅雀GD","ノイズGD","ミンクGD","クリアGD");
	AssocArray($EndName,"共通GD","紅雀BD","ノイズBD","ノイズfBD","ミンクBD","クリアBD","蓮BD","ウイトリBD", "真相蓮GD", "紅雀GD","ノイズGD","ミンクGD","クリアGD");

	Array($EndName["共通GD"],"Roll01","@dmedgood","BLACK",0,30000,-576,1,"V",false,false);//0
	
	Array($EndName["紅雀BD"],"Roll01","@dmedbd01","BLACK",0,30000,-576,1,"V",false,false);//1
	Array($EndName["ノイズBD"],"Roll01","@dmedbd02","BLACK",0,30000,-576,1,"V",false,false);//2
	Array($EndName["ノイズfBD"],"Roll01","@dm8bitedbd02","BLACK",0,300,-576,0,"F",false,true);//3
	Array($EndName["ミンクBD"],"Roll01","@dmedbd03","BLACK",0,30000,-576,1,"V",false,false);//4
	Array($EndName["クリアBD"],"Roll01","@dmedbd04","BLACK",0,30000,-576,1,"V",false,false);//5
	
	Array($EndName["蓮BD"],"Roll01","@dmedbd05","BLACK",0,30000,-576,1,"V",false,false);//6
	Array($EndName["ウイトリBD"],"Roll01","@dmedbd06","BLACK",0,30000,-576,1,"V",false,false);//7
	Array($EndName["真相蓮GD"],"Roll01","@dmedgrand","BLACK",0,30000,-576,1,"V",false,false);//8
	
	Array($EndName["紅雀GD"],  "Roll01","@dmedgood","BLACK",0,30000,-576,1,"V",false,false);//9
	Array($EndName["ノイズGD"],"Roll01","@dmedgood","BLACK",0,30000,-576,1,"V",false,false);//10
	Array($EndName["ミンクGD"],"Roll01","@dmedgood","BLACK",0,30000,-576,1,"V",false,false);//11
	Array($EndName["クリアGD"],"Roll01","@dmedgood","BLACK",0,30000,-576,1,"V",false,false);//12

//	Array($EndName["真実"],"Roll01","@uta01","cg/sys/ed/エンドテロップ背景.png",6000,30000,0,1,"H",false,false);//鬼

//	Array($EndName["共通"],"Roll01","@EndBGM01","BLACK",6200,60000,-576,1,"V","@EndBGM02",false);
//	Array($EndName["真実"],"Roll01","@xsonged","BLACK",-3000,60000,-576,1,"V",false,false);
//	Array($EndName["真実"],"Movie01",false,"WHITE",-3000,60000,-576,1,"V",false,false);

//	Array($EndName,"英雄編","復讐編","魔王編","悪鬼編","茶々編","解放編");
//	AssocArray($EndName,"英雄編","復讐編","魔王編","悪鬼編","茶々編","解放編");
//	Array($EndName["英雄編"],"Roll01","@xsonged","BLACK",-3000,60000,-576,1,"V",false,false);
//	Array($EndName["復讐編"],"Roll01","@xsonged","BLACK",-13000,60000,1024,3,"H",false,true);
//	Array($EndName["魔王編"],"Roll01","@xsonged","BLACK",-5000,60000,1024,3,"H",false,true);
//	Array($EndName["悪鬼編"],"Roll01","@xsonged","BLACK",6000,60000,1124,3,"H",false,true);
//	Array($EndName["茶々編"],"Roll01","@xsonged","BLACK",10000,60000,1024,3,"H",false,true);
//	Array($EndName["解放編"],"Roll01","@xsonged","BLACK",-13000,60000,1024,3,"H",false,true);

//■０：プロセス名
//■１：唄名
//■２：出だしの背景
//■３：再生秒数調整
//■４：ＢＧＭ２週目へのカウント
//■５：ロール位置調整（主にケツ調整）
//■６：スタッフロールの数
//■７：スタッフロールの形式「F」「H」「V」
//■８：２曲あるかないか、有る場合は曲名を無い場合は「false」
//■９：後ろで画像を切り替えるか

//■０－：フェード画像差分
//■１－：待機秒数、表示秒数（前画像消去分子・ウェイト・次画像表示秒数・ウェイト）

//■６－：ロール画像差分（ENDRoll00・ENDRoll01・・・）
//■７－：ロール画像のピクセル間隔調整

	//Array($EndName["共通"][0],"logo.png");//■９がfalseで意味が無い
	//Array($EndName["共通"][1],0,960,10,10);//■９がfalseで意味が無い
	//Array($EndName["共通"][6],"クレジット_ショート");
	//Array($EndName["共通"][7],0);

	//Array($EndName["真実"][0],"logo.png");//■９がfalseで意味が無い
	//Array($EndName["真実"][1],0,960,10,10);//■９がfalseで意味が無い
	Array($EndName["共通GD"][6],"EDgood.jpg");
	Array($EndName["共通GD"][7],0);
	
	Array($EndName["紅雀BD"][6],"EDbd01.jpg");
	Array($EndName["紅雀BD"][7],0);
	Array($EndName["ノイズBD"][6],"EDbd02.jpg");
	Array($EndName["ノイズBD"][7],0);

	Array($EndName["ノイズfBD"][0],"EDbd02f00.png","EDbd02f01.png","EDbd02f02.png","EDbd02f03.png","EDbd02f04.png","EDbd02f05.png","EDbd02f06.png","EDbd02f07.png");
	Array($EndName["ノイズfBD"][1],0,0,0,50,0,10,0,175,0,10,0,175,0,10,0,175,0,10,0,175,0,10,0,175,0,0,0,200);
	Array($EndName["ノイズfBD"][6],"EDbd02.jpg");
	Array($EndName["ノイズfBD"][7],0);

	Array($EndName["ミンクBD"][6],"EDbd03.jpg");
	Array($EndName["ミンクBD"][7],0);
	Array($EndName["クリアBD"][6],"EDbd04.jpg");
	Array($EndName["クリアBD"][7],0);
	
	Array($EndName["蓮BD"][6],"EDbd05.jpg");
	Array($EndName["蓮BD"][7],0);
	Array($EndName["ウイトリBD"][6],"EDbd06.jpg");
	Array($EndName["ウイトリBD"][7],0);
	Array($EndName["真相蓮GD"][6],"EDgrand.jpg");
	Array($EndName["真相蓮GD"][7],0);
	
	Array($EndName["紅雀GD"][6],"EDgood.jpg");
	Array($EndName["紅雀GD"][7],0);
	Array($EndName["ノイズGD"][6],"EDgood02.jpg");
	Array($EndName["ノイズGD"][7],0);
	Array($EndName["ミンクGD"][6],"EDgood03.jpg");
	Array($EndName["ミンクGD"][7],0);
	Array($EndName["クリアGD"][6],"EDgood04.jpg");
	Array($EndName["クリアGD"][7],0);

/*
	Array($EndName["復讐編"][0],"logo.png");
	Array($EndName["復讐編"][1],0,960,10,10);
	Array($EndName["復讐編"][6],"香奈枝ルート","staff01","staff02");
	Array($EndName["復讐編"][7],0,0,0);

	Array($EndName["茶々編"][0],"logo.png");
	Array($EndName["茶々編"][1],0,960,10,10);
	Array($EndName["茶々編"][6],"茶々丸ルート","staff01","staff02");
	Array($EndName["茶々編"][7],0,0,0);

	Array($EndName["魔王編"][0],"logo.png");
	Array($EndName["魔王編"][1],0,960,10,10);
	Array($EndName["魔王編"][6],"村正ルート２","staff01","staff02");
	Array($EndName["魔王編"][7],0,0,0);

	Array($EndName["解放編"][0],"logo.png");
	Array($EndName["解放編"][1],0,960,10,10);
	Array($EndName["解放編"][6],"村正ルート２","staff01","staff02");
	Array($EndName["解放編"][7],0,0,0);

	Array($EndName["悪鬼編"][0],"ev169_署長との出会い.jpg","ev132_笑う統.jpg","ev133_兜割に挑む光_c.jpg","ev008_赤子を抱える女.jpg","ev128_病床の光_b01.jpg","ev138_首領の最期_d.jpg","ev139_統を殺害_a.jpg","ev101_プロローグ_a.jpg","ev103_香奈枝演奏_a.jpg","ev268_ヤクザと対峙する一条.jpg","ev106_雄飛と見下ろす村正_d.jpg","ev112_一条をお姫様だっこする村正.jpg","ev113_サーキット貴賓席_a.jpg","ev914_九〇式竜騎兵魔剣インメルマンターン.jpg","ev213_景明と村正の結縁_b.jpg","ev221_月明かりを浴びて立つ光_b.jpg","ev230_泣きじゃくる村正.jpg","ev239_茶々丸の最期_d.jpg","ev251_村正VS銀星号決戦第二局.jpg","ev255_野太刀を構える村正_a.jpg","ev256_銀星号の最期_b.jpg","ev263_村正を刺し貫く雪車町.jpg","ev266_景明、悪鬼の笑い.jpg","logo.png");
	Array($EndName["悪鬼編"][1],5,35,5,34,5,5,5,34,5,5,5,34,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,16,3,3);
	Array($EndName["悪鬼編"][6],"村正ルート","staff01","staff02");
	Array($EndName["悪鬼編"][7],0,200,50);
*/


//デバッグ用
	$RollDebug=false;
	if($RollDebug){
		$RollDebugAll=0;
		$RollDebugWhile=1;
		while(Count($EndName["悪鬼編"][1])>$RollDebugWhile){
			$RollDebugAll=$RollDebugAll+$EndName["悪鬼編"][1][$RollDebugWhile];
			$RollDebugWhile=$RollDebugWhile+2;
		}
		CreateText("デバッグロール", 2000000, 50, 50, 700, 500, $RollDebugAll);
		WaitKey();
		Delete("デバッグロール");
	}


	$LayerCount0=100000;//下地
	$LayerCount1=100010;//ロール
	$LayerCount2=100009;//フェード用の絵
	if($EndName[$ENDNumber]=="悪鬼編"){
		$LayerCount2=100011;//フェード用の絵
	}
	$LayerCount9=200000;
}

//=============================================================================//
..//★ＥＤ定義
//=============================================================================//
function TheEND($ENDNumber)
{
	//■右バー停止
	//QuickStop();

	//▼連想配列
	ArrayEND();

	$EndBunbo=1000;
	$ENDBGM=$EndName[$ENDNumber][1];
	$ENDBack=$EndName[$ENDNumber][2];
	$TimeAdjust=$EndName[$ENDNumber][3];
	$LoopAdjust=$EndName[$ENDNumber][4];
	$LengthAdjust=$EndName[$ENDNumber][5];
	$ENDImage="end";
	$BGM名2=$EndName[$ENDNumber][8];

	//////////////////
	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@dm*", 2000, 0, NULL);
	SetVolume("@m*", 2000, 0, NULL);
	if($ENDBGM!=false){
		SoundPlay($ENDBGM,1000,1000,true);
	}
	//////////////////

	//★背景差し替え
	if($ENDBack!="EXTRA"){
		if($ENDBack=="BLACK"||$ENDBack=="WHITE"){
			CreateColor("ENDBack", $LayerCount0, 0, 0, 1024, 576, $ENDBack);
		}else{
			CreateTexture("ENDBack", $LayerCount0, 0, 0, $ENDBack);
		}
		SetAlias("ENDBack", "ENDBack");
		Fade("ENDBack", 0, 0, null, true);
		Request("ENDBack", Lock);
		Fade("ENDBack", 1000, 1000, null, true);
	
		//★ロック設置
		LockVideo(true);
		Delete("@*");
		Fade("@*", 0, 0, null, false);
		Fade("@*/*", 0, 0, null, false);
		Fade("@*/*/*", 0, 0, null, false);
		Fade("*/*", 0, 0, null, false);
		Fade("*/*", 0, 0, null, false);
		Fade("*/*/*", 0, 0, null, false);
		Fade("ENDBack", 0, 1000, null, true);
		//★ロック設置
		LockVideo(false);

		Request("ENDBack", UnLock);
	}

	if($EndName[$ENDNumber]=="悪鬼編"){
		CreateTextureSP("ENDWindow", $LayerCount9, 25, 120, "cg/sys/ed/エンドロール用イベントボカシ額縁.png");
		CreateTextureSP("ENDWindow2", $LayerCount2, 0, 0, "cg/sys/ed/エンドロール用イベントボカシ額縁2.png");
	}

	//★ＥＤ定義
	$RollNut=String("ClearRoll%02d",$ENDNumber);
	EndRollTexture();
	if(VariableValue(#,$RollNut)){
		SetRoll($EndProcess,$ENDBGM,false);
	}else{
		SetRoll($EndProcess,$ENDBGM,true);
		VariableValue(#,$RollNut,true);
	}

	//■右バー再開
	if($ENDNumber==0||$ENDNumber==1||$ENDNumber==2||$ENDNumber==4){
		//Wait(5000);
		//QuickStart();
	}
}

...//■テクスチャ系定義
function EndRollTexture()
{
	$EndRoll=$EndName[$ENDNumber][0];

	if($EndRoll=="Roll01"){
		$EndProcess="ProcessRoll01";
		TextureRoll01();
	}else if($EndRoll=="Roll00"){
		$EndProcess="ProcessRoll00";
		TextureRoll00();
	}else if($EndRoll=="Roll00H"){
		$EndProcess="ProcessRoll00H";
		TextureRoll00H();
	}else if($EndRoll=="Movie01"){
		$EndProcess="ProcessRoll01";
	}
}

//=============================================================================//
..//★ロール開始
//=============================================================================//
function SetRoll($処理単位名,$BGM名,$待機)
{
	if(!$PreSetRoll){
		#play_speed_plus=#SYSTEM_play_speed;
		#SYSTEM_play_speed=3;
	
		$SYSTEM_text_auto=false;
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
	
		$SYSTEM_menu_lock=true;
	}


	if($EndRoll!="Movie01"){
		CreateProcess("エンドロールプロセス", 2000, 0, 0, $処理単位名);
		SetAlias("エンドロールプロセス", "エンドロールプロセス");
		CreateProcess("エンドロール歌プロセス", 150, 0, 0, "EndSong");
		SetAlias("エンドロール歌プロセス", "エンドロール歌プロセス");
	
		CreateColor("色", $LayerCount9, 0, 0, 1024, 576, BLACK);
		SetAlias("色", "色");
		Fade("色", 0, 0, null, true);
	
		$EndingSkip=false;
		Request("エンドロールプロセス", Start);
		Wait(5000);
		if($待機){WaitAction("エンドロールプロセス", null);}
	
		$SYSTEM_keydown_enter=false;
		$SYSTEM_l_button_down=false;
		select{
			if($SYSTEM_l_button_down||$SYSTEM_keydown_enter){
				break;
			}
		}
		$SYSTEM_l_button_down=false;
		$SYSTEM_keydown_enter=false;
	
		$EndingSkip=true;

		Request($BGM名, EntrustSuspend);
		SetVolume($BGM名, 6000, 0, NULL);

		if($EndName[$ENDNumber][8]!=false){
			Request($BGM名2, EntrustSuspend);
			SetVolume($BGM名2, 6000, 0, NULL);
		}
	}else{
		//ムービー
		CreateColor("色", $LayerCount9, 0, 0, 1024, 576, BLACK);
		SetAlias("色", "色");
		Fade("色", 0, 0, null, true);

		CreateMovie("ENDMovie",$LayerCount1,0,0,false,false,"dx/mv_axl_ED.ngs",500);
		SetAlias("ENDMovie", "ENDMovie");

		if(#LOCAL_break_play_movie&&!$待機){
			//Message("デバッグ用ウィンドウ１","デバッグ用です",YESNOCANCE,EXCLAMATION);
			CreateProcess("エンドロールプロセスムービー", 150, 0, 0, "EndMovie");
			SetAlias("エンドロールプロセスムービー", "エンドロールプロセスムービー");
			Request("エンドロールプロセスムービー", Start);
		}
		WaitPlay("ENDMovie", null);

		Request("エンドロールプロセスムービー", Stop);
		WaitAction("エンドロールプロセスムービー", null);
		Delete("エンドロールプロセスムービー");

		$SYSTEM_l_button_down=false;
		$SYSTEM_keydown_enter=false;
	}

	Wait(2000);
	Fade("@色", 2000, 1000, null, true);

	Request("エンドロールプロセス", Stop);

	Fade("@エンドロール*",0,0,null,true);
	Delete("@エンドロール*");
	Delete("@END*");
	Fade("@色", 0, 0, null, true);

	Delete("@色");

	Wait(2000);

	if($EndName[$ENDNumber]!="悪鬼編"){
		//$SYSTEM_menu_lock = false;
	}

	#SYSTEM_play_speed = #play_speed_plus;
	$SYSTEM_text_waitkey = true;

	$ClearL=true;
	#ClearG=true;

	$PLACE_end=false;
	$PreSetRoll=false;
}

function EndMovie()
{
	$SYSTEM_keydown_enter=false;
	$SYSTEM_l_button_down=false;

	while(1){
		if($SYSTEM_l_button_down||$SYSTEM_keydown_enter){
				Fade("@色", 2000, 1000, null, true);
				Delete("@ENDMovie");
		}
		Wait(100);
	}
}

//=============================================================================//
..//●ロール方式プロセス
//=============================================================================//

//――――――――――――――――――――――――――――――――――――
...//古典的フェードスクリプト
function TextureRoll01()
{
	if($EndName[$ENDNumber][9]){
		$ENDWhile=0;
		while(Count($EndName[$ENDNumber][0])>$ENDWhile){
			$nut=String("ENDTexture%02d",$ENDWhile);
			$img=$EndName[$ENDNumber][0][$ENDWhile];
	
			if($img=="WHITE"||$img=="BLACK"){
				CreateColor($nut, $LayerCount2, 0, 0, 1024, 576, $img);
			}else{
				//$img="cg/sys/ed/thum/"+$img;
				$img="cg/sys/ed/"+$img;//+".png";

				if($EndName[$ENDNumber]=="悪鬼編"){
					if(Strstr($img, "logo")){
						CreateTexture($nut, $LayerCount9, 0, 0, $img);
					}else{
						CreateTexture($nut, $LayerCount2, 25, 120, $img);
					}
				}else{
					CreateTexture($nut, $LayerCount2, Center, Middle, $img);
				}
			}
			SetAlias($nut, $nut);
			Fade($nut, 0, 0, null, true);
			$ENDWhile++;
		}
	}

	if($EndName[$ENDNumber][7]!="F"){
		if($EndName[$ENDNumber][7]=="V"){
			$EndStartPoint=576;
		}else if($EndName[$ENDNumber][7]=="H"){
			$EndStartPoint=0;
		}

		$ENDWhile=0;
		while($EndName[$ENDNumber][6]>$ENDWhile){
			$nut=String("ENDRoll%02d",$ENDWhile);
			$img="cg/sys/ed/"+$EndName[$ENDNumber][6][$ENDWhile];//+".png";

			if($EndName[$ENDNumber][7]=="V"){
				CreateTexture($nut, $LayerCount1, Center, 0, $img);
				SetAlias($nut, $nut);

				$EndStartPoint=$EndStartPoint+$EndName[$ENDNumber][7][$ENDWhile];
				$RollV=$EndStartPoint;
				Move($nut, 0, 0, $RollV, null, true);
				$EndStartPoint+=ImageVertical($nut);
				$EndStart=$EndStartPoint;
			}else if($EndName[$ENDNumber][7]=="H"){
				CreateTexture($nut, $LayerCount1, 0, Middle, $img);
				SetAlias($nut, $nut);

				$EndStartPoint+=ImageHorizon($nut);
				$EndStartPoint=$EndStartPoint+$EndName[$ENDNumber][7][$ENDWhile];
				$RollH = -$EndStartPoint;
				Move($nut, 0, $RollH, 0, null, true);
				$EndStart=$EndStartPoint;
			}

			$ENDWhile++;
		}
	}
}

function ProcessRoll01()
{
	if($EndName[$ENDNumber][7]=="V"){
		$EndMoveA=$EndStart;
		$EndMoveX=0;
		$EndMoveY=-($EndMoveA+$LengthAdjust);
	}else if($EndName[$ENDNumber][7]=="H"){
		$EndMoveA=$EndStart;
		$EndMoveX=$EndMoveA+$LengthAdjust;
		$EndMoveY=0;
	}

	SetLoop($BGM名, false);
	Request($BGM名, CompulsorySuspend);

	$時間=RemainTime($BGM名);
	$時間=$時間+$TimeAdjust;
	if($時間<$LoopAdjust){
		$EndExtension=true;
		$秒数=DurationTime($BGM名);
		$時間+=$秒数;
		Request("@エンドロール歌プロセス", Start);
	}

	if($EndName[$ENDNumber][8]!=false){
		$時間+=DurationTime($BGM名2);
		Request("@エンドロール歌プロセス", Start);
	}

//	WaitKey();

	if($EndName[$ENDNumber][7]!="F"){
		Move("@ENDRoll*",$時間,@$EndMoveX,@$EndMoveY,null,false);
	}

//	WaitKey();

	$nut="何か";

	if($EndName[$ENDNumber][9]){
		$EndOneTime=$時間/$EndBunbo;
		$ENDWhile2=0;
		$ENDWhile=0;
		while(Count($EndName[$ENDNumber][0])>$ENDWhile){
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			Fade($nut, $Time, 0, null, false);

			$ENDWhile2++;
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			Wait($Time);
	
			$ENDWhile2++;
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			$nut=String("@ENDTexture%02d",$ENDWhile);
			Fade($nut, $Time, 1000, null, false);

			$ENDWhile2++;
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			Wait($Time);

			$ENDWhile2++;
			$ENDWhile++;
		}
	}

	WaitAction("@ENDRoll*", null);
}

//――――――――――――――――――――――――――――――――――――
...//古典的ロールスクリプト
function TextureRoll00()
{
	CreateTexture("ENDRoll", $LayerCount1, 0, 600, $ENDImage);
	SetAlias("ENDRoll", "ENDRoll");
}
function ProcessRoll00()
{
	$EndMoveA=ImageVertical("@ENDRoll");
	$EndMoveA+=$LengthAdjust;
	$EndMoveB=-($EndMoveA);

	SetLoop($BGM名, false);
	Request($BGM名, CompulsorySuspend);

	$時間=RemainTime($BGM名);
	$時間+=$TimeAdjust;
	if($時間<$LoopAdjust){
		$EndExtension=true;
		$秒数=DurationTime($BGM名);
		$時間+=$秒数;
		Request("@エンドロール歌プロセス", Start);
	}
	Move("@ENDRoll",$時間,@0,@$EndMoveB,null,true);
}

//――――――――――――――――――――――――――――――――――――
...//古典的ロールスクリプト：横
function TextureRoll01H()
{
	CreateTexture("ENDRoll", $LayerCount1, 0, 0, $ENDImage);
	SetAlias("ENDRoll", "ENDRoll");

	$RollH=ImageHorizon("ENDRoll");
	$RollH=-$RollH;
	Move("ENDRoll", 0, $RollH, 0, null, true);
}
function ProcessRoll01H()
{
	$EndMoveA=ImageHorizon("@ENDRoll");
	$EndMoveA+=$LengthAdjust;

	SetLoop($BGM名, false);
	Request($BGM名, CompulsorySuspend);

	$時間=RemainTime($BGM名);
	$時間+=$TimeAdjust;
	if($時間<$LoopAdjust){
		$EndExtension=true;
		$秒数=DurationTime($BGM名);
		$時間+=$秒数;
		Request("@エンドロール歌プロセス", Start);
	}
	Move("@ENDRoll",$時間,@$EndMoveA,@0,null,true);
}

//――――――――――――――――――――――――――――――――――――
//エンドスクリプト用の音継続プロセス
//――――――――――――――――――――――――――――――――――――
function EndSong()
{
	if($EndExtension){
		$EndTime=RemainTime($BGM名);
		Wait($EndTime);
	
		SetVolume($BGM名, 1000, 0, NULL);
		WaitAction($BGM名, null);
	
		SetFrequency($BGM名, 0, 1000, NULL);
		SetVolume($BGM名, 0, 500, null);
		SetLoop($BGM名, false);
		Request($BGM名, Play);
	}

	if($EndName[$ENDNumber][8]!=false){
		WaitPlay($BGM名, null);
	
		if(!$EndingSkip){
			Request($BGM名2, CompulsorySuspend);
	
			SetFrequency($BGM名2, 0, 1000, NULL);
			SetVolume($BGM名2, 0, 500, null);
			SetLoop($BGM名2, false);
			Request($BGM名2, Play);
	
			WaitPlay($BGM名2, null);
		}
	}
}
//――――――――――――――――――――――――――――――――――――

//=============================================================================//
..//★ロール準備（最後にロックする場合）
//=============================================================================//
function PreSetRoll($ENDNumber)
{
	//■右バー停止
	//QuickStop();

	//▼連想配列
	ArrayEND();
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 2000, 0, NULL);
	SoundPlay($ENDBGM,0,750,true);

	$PLACE_end=true;

	#play_speed_plus = #SYSTEM_play_speed;
	#SYSTEM_play_speed = 3;

	$SYSTEM_text_auto = false;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;

	$SYSTEM_menu_lock = true;

	Request($ENDBGM, CompulsorySuspend);

	$SYSTEM_text_interval = 128;
	$SYSTEM_text_waitkey = false;

	$PreSetRoll=true;
}


function PreSetRoll02A()
{
	//■右バー停止
	//QuickStop();

	//▼連想配列
	ArrayEND();

	$PLACE_end=true;

	#play_speed_plus = #SYSTEM_play_speed;
	#SYSTEM_play_speed = 3;

	$SYSTEM_text_auto = false;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;

	$SYSTEM_menu_lock = true;

	$SYSTEM_text_interval = 128;
	$SYSTEM_text_waitkey = false;

	$PreSetRoll=true;
}
function PreSetRoll02B($ENDNumber)
{
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 2000, 0, NULL);
	SoundPlay($ENDBGM,0,1000,true);
	Request($ENDBGM, CompulsorySuspend);
}

//=============================================================================//
..//★ロール準備（途中からクリックロックする場合）
//=============================================================================//
function PreTextRoll($ENDNumber)
{
	//■右バー停止
	//QuickStop();

	//▼連想配列
	ArrayEND();
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 5000, 0, NULL);
	SoundPlay($ENDBGM,0,750,true);

	$PLACE_end=true;

	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_skip=false;

	$SYSTEM_text_auto_lock=true;

	Request($ENDBGM, CompulsorySuspend);
	$SYSTEM_text_auto_lock = true;

	$SYSTEM_text_interval = 128;
	$SYSTEM_text_waitkey = false;
}

function PlayVOICE_ED($VoiceClassNut,$音楽データ,$VoiceWaitPlus1,$VoiceWaitPlus2)
{
//<voice name="デネブ" class="デネブ" src="voice/st20/0600220de" mode="off">

	$クラス名=$VoiceClassNut;

	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(#VoiceName[$VoiceWhile]==$クラス名){
			//$VoiceGet=true;
		}
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$クラス名){
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&VariableValue(#,"voice_on_"+$クラス名))||(!$VoiceGet&&#SYSTEM_voice_enable_another)){}

	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+$クラス名+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$場所指定 = "voice/" + $音楽データ;

		CreateSound($VoiceClassNut, VOICE, $場所指定);
		SetAlias($VoiceClassNut, $VoiceClassNut);

		SetLoop($VoiceClassNut, false);
		SetVolume($VoiceClassNut, 0, 1000, null);
		Request($VoiceClassNut, Play);
		Request($VoiceClassNut, Disused);

		$VoiceWaitPlus=$VoiceWaitPlus1;
	}else{
		$VoiceWaitPlus=$VoiceWaitPlus2;
	}
}
function StopVOICEED()
{
	$待ち時間=RemainTime($VoiceClassNut);
	$待ち時間+=$VoiceWaitPlus;
	Wait($待ち時間);
	Delete($VoiceClassNut);
}

/*
	PlayVOICE_ED("デネブ","voice/st20/0600220de",1000,3000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box00>
[text0010028]
//【デネブ】
<voice name="デネブ" class="デネブ" src="voice/st20/0600220de" mode="off">
「見られちゃった――」
{StopVOICEED();}
</PRE>
	SetText();
	TypeBegin();//―――――――――――――――――――――――――――――
=
*/



//■音関係のマクロコマンド
//=============================================================================//
.//音関係
//=============================================================================//

//――――――――――――――――――――
..BGM
//――――――――――――――――――――

//通常定義
function CreateBGM($ＢＧＭナット,$音楽データ)
{
	BGMbase();
	//Lockをかけたい場合は「InitBGM」で個別にLockをかけてください。
}
function CreateBGMEX($ＢＧＭナット,$音楽データ,開始ミリ秒,終了ミリ秒)
{
	BGMbase();
	SetLoopPoint($ＢＧＭナット,開始ミリ秒,終了ミリ秒);
}
function BGMbase()
{
	$場所指定 = "sound/bgm/" + $音楽データ;
	CreateSound($ＢＧＭナット, BGM, $場所指定);
	SetVolume($ＢＧＭナット, 0, 0, NULL);
	SetAlias($ＢＧＭナット, $ＢＧＭナット);
}



//残響定義
function CreateBGM_ef($ＢＧＭナット１,$音楽データ)
{
	BGMbase_ef();
}
function CreateBGMEX_ef($ＢＧＭナット１,$音楽データ,開始ミリ秒,終了ミリ秒)
{
	BGMbase_ef();
	SetLoopPoint($ＢＧＭナット１,開始ミリ秒,終了ミリ秒);
	SetLoopPoint($ＢＧＭナット２,開始ミリ秒,終了ミリ秒);
}
function BGMbase_ef()
{
	$場所指定 = "sound/bgm/" + $音楽データ;
	CreateSound($ＢＧＭナット１, BGM, $場所指定);
	SetVolume($ＢＧＭナット１, 0, 0, NULL);
	SetAlias($ＢＧＭナット１, $ＢＧＭナット１);
	Request($ＢＧＭナット１, Lock);

	$ＢＧＭナット２=$ＢＧＭナット１+"_ef";
	CreateSound($ＢＧＭナット２, BGM, $場所指定);
	SetVolume($ＢＧＭナット２, 0, 0, NULL);
	SetAlias($ＢＧＭナット２, $ＢＧＭナット２);
	Request($ＢＧＭナット２, Lock);

	//SoundEffect("ナット名","Chorus",ドライ0～ウェット100,うねり0~100,フィードバック-99~99,ディレイタイム0~20);
	//SoundEffect($ＢＧＭナット２,"Chorus",50,50,-90,10);
	//SoundEffect($ＢＧＭナット２,"Chorus",50,50,-90,10);

	//SoundEffect("ナット名","Echo",ドライ0～ウェット100,フィードバック0~100,左チャンネルディレイ（1~2000ミリ秒）,右チャンネルディレイ（1~2000ミリ秒）);
	//SoundEffect($ＢＧＭナット２,"Echo",60,70,230,230);
	SoundEffect($ＢＧＭナット２,"Echo",60,70,170,170);
}


function CreateBGMPX("ナット名",$音楽データ)
{
	$場所指定 = $音楽データ;
	CreateSound("ナット名", BGM, $場所指定);
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
}

function CreateBGMSE("ナット名",$音楽データ)
{
	$場所指定 = "sound/bgm/" + $音楽データ;
	CreateSound("ナット名", SE, $場所指定);
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
}





//――――――――――――――――――――
..SE
//――――――――――――――――――――
function CreateSE("ナット名",$音楽データ)
{
	$場所指定 = "sound/se/" + $音楽データ;

	CreateSound("ナット名", SE, $場所指定);
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
}

//残響定義
function CreateSEEF($ＳＥナット１,$音楽データ)
{
	$場所指定 = "sound/se/" + $音楽データ;
	CreateSound($ＳＥナット１, BGM, $場所指定);
	SetVolume($ＳＥナット１, 0, 0, NULL);
	SetAlias($ＳＥナット１, $ＳＥナット１);
	Request($ＳＥナット１, Lock);

	$ＳＥナット２=$ＳＥナット１+"_ef";
	CreateSound($ＳＥナット２, BGM, $場所指定);
	SetVolume($ＳＥナット２, 0, 0, NULL);
	SetAlias($ＳＥナット２, $ＳＥナット２);
	Request($ＳＥナット２, Lock);

	SoundEffect($ＳＥナット２,"Echo",60,70,170,170);
}

function CreateSEEX("ナット名",$音楽データ)
{
	$場所指定 = "sound/se/" + "$音楽データ";

	if($音楽データ=="se戦闘_衝撃_エネルギー鬩ぎ合い01L"){
		//村正音源←ドラマダでも使用
		$開始ミリ秒=5833;
		$終了ミリ秒=17267;
	}else if($音楽データ=="se戦闘_メガ砲_チャージ01"){
		//ドラマダ音源
		$開始ミリ秒=997;
		$終了ミリ秒=1253;
	}else if($音楽データ=="se戦闘_蓮_腕武器化01L"){
		//ドラマダ音源
		$開始ミリ秒=2663;
		$終了ミリ秒=8634;
	}else if($音楽データ=="se環境_ガヤ_歓声02"){
		//ドラマダ音源
		$開始ミリ秒=1193;
		$終了ミリ秒=6835;
	}else if($音楽データ=="se乗物_改造バイク_ターボスタート01"){
		//ドラマダ音源
		$開始ミリ秒=3036;
		$終了ミリ秒=7055;
	}

	CreateSound("ナット名", SE, "$場所指定");
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
	SetLoopPoint("ナット名",$開始ミリ秒,$終了ミリ秒);
}

function OnSE($音楽データ,$ＳＥ音量)
{
	if($SeName==""||$SeName=="OnSE10"){$SeName="OnSE01";}
	else if($SeName=="OnSE01"){$SeName="OnSE02";}
	else if($SeName=="OnSE02"){$SeName="OnSE03";}
	else if($SeName=="OnSE03"){$SeName="OnSE04";}
	else if($SeName=="OnSE04"){$SeName="OnSE05";}
	else if($SeName=="OnSE05"){$SeName="OnSE06";}
	else if($SeName=="OnSE06"){$SeName="OnSE07";}
	else if($SeName=="OnSE07"){$SeName="OnSE08";}
	else if($SeName=="OnSE08"){$SeName="OnSE09";}
	else if($SeName=="OnSE09"){$SeName="OnSE10";}

	if($SeName01==""){$SeName01=$SeName;}
	else if($SeName02==""){$SeName02=$SeName;}
	else if($SeName03==""){$SeName03=$SeName;}
	else if($SeName04==""){$SeName04=$SeName;}
	else if($SeName05==""){$SeName05=$SeName;}
	else if($SeName06==""){$SeName06=$SeName;}
	else if($SeName07==""){$SeName07=$SeName;}
	else if($SeName08==""){$SeName08=$SeName;}
	else if($SeName09==""){$SeName09=$SeName;}
	else if($SeName10==""){$SeName10=$SeName;}

	$ナット名 = $SeName;

	$場所指定 = "sound/se/" + $音楽データ;

	CreateSound($ナット名, SE, $場所指定);
	SetVolume($ナット名, 0, 0, NULL);
	SetAlias($ナット名, $ナット名);

	Request($ナット名, "Play");

	SetFrequency($ナット名, 0, 1000, NULL);
	SetPan($ナット名, 0, 0, NULL);
	SetLoop($ナット名, false);

	SetVolumeEX($ナット名, 0, $ＳＥ音量, null);
	Request($ナット名, Disused);

}




//――――――――――――――――――――
..VOICE
//――――――――――――――――――――
function CreateVOICE($ナット名,$音楽データ)
{
	$クラス名=$ナット名;

//	$VoiceGetN=0;
//	$VoiceGet=false;
//	$VoiceWhile=0;
//	while(#VoiceSetCount>$VoiceWhile){
//		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$クラス名){
//			$VoiceGetN=$VoiceWhile;
//			$VoiceGet=true;
//		}
//		$VoiceWhile++;
//	}

	$VOICE_ON=Strstr(#SYSTEM_voice_enable_list, $クラス名);
//	CreateText("テキスト１", 200000, 50, 50, 700, 500, $VOICE_ON);

	$VOICE_LIST="蒼葉紅雀ノイズミンククリア羽賀ナオキオミオタエミズキトリップウイルス悪島蓮ベニウサギモドキ鳥卯水竜峰アルファセイ東江";
	$VOICE_OTHER=Strstr($VOICE_LIST, $クラス名);
//	CreateText("テキスト２", 200000, 50, 150, 700, 500, $VOICE_OTHER);

	if($VOICE_ON||(!$VOICE_OTHER&&#SYSTEM_voice_enable_another)){
		$場所指定 = "voice/" + $音楽データ;

		CreateSound($ナット名, VOICE, $場所指定);
		SetVolume($ナット名, 0, 0, NULL);
		SetAlias($ナット名, $ナット名);
	}
}

function CreateVOICEEX($ナット名,$音楽データ,$クラス名)
{
//	$VoiceGetN=0;
//	$VoiceGet=false;
//	$VoiceWhile=0;
//	while(#VoiceSetCount>$VoiceWhile){
//		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$クラス名){
//			$VoiceGetN=$VoiceWhile;
//			$VoiceGet=true;
//		}
//		$VoiceWhile++;
//	}

	$VOICE_ON=Strstr(#SYSTEM_voice_enable_list, $クラス名);
//	CreateText("テキスト１", 200000, 50, 50, 700, 500, $VOICE_ON);

	$VOICE_LIST="蒼葉紅雀ノイズミンククリア羽賀ナオキオミオタエミズキトリップウイルス悪島蓮ベニウサギモドキ鳥卯水竜峰アルファセイ東江";
	$VOICE_OTHER=Strstr($VOICE_LIST, $クラス名);
//	CreateText("テキスト２", 200000, 50, 150, 700, 500, $VOICE_OTHER);

	if($VOICE_ON||(!$VOICE_OTHER&&#SYSTEM_voice_enable_another)){
		$場所指定 = "voice/" + $音楽データ;

		CreateSound($ナット名, VOICE, $場所指定);
		SetVolume($ナット名, 0, 0, NULL);
		SetAlias($ナット名, $ナット名);
	}

//	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
//		$場所指定 = "voice/" + $音楽データ;

//		CreateSound($ナット名, VOICE, $場所指定);
//		SetVolume($ナット名, 0, 0, NULL);
//		SetAlias($ナット名, $ナット名);
//	}
}

function CreateVOICESE($ナット名,$音楽データ)
{
	$クラス名=$ナット名;

	$VOICE_ON=Strstr(#SYSTEM_voice_enable_list, $クラス名);

	$VOICE_LIST="蒼葉紅雀ノイズミンククリア羽賀ナオキオミオタエミズキトリップウイルス悪島蓮ベニウサギモドキ鳥卯水竜峰アルファセイ東江";
	$VOICE_OTHER=Strstr($VOICE_LIST, $クラス名);

	if($VOICE_ON||(!$VOICE_OTHER&&#SYSTEM_voice_enable_another)){
		//$場所指定 = "voice/" + $音楽データ;
		$場所指定 = $音楽データ;

		CreateSound($ナット名, SE, $場所指定);
		SetVolume($ナット名, 0, 0, NULL);
		SetAlias($ナット名, $ナット名);
	}

}

function CreateVOICESEEX($ナット名,$音楽データ,$クラス名)
{

	$VOICE_ON=Strstr(#SYSTEM_voice_enable_list, $クラス名);

	$VOICE_LIST="蒼葉紅雀ノイズミンククリア羽賀ナオキオミオタエミズキトリップウイルス悪島蓮ベニウサギモドキ鳥卯水竜峰アルファセイ東江";
	$VOICE_OTHER=Strstr($VOICE_LIST, $クラス名);

	if($VOICE_ON||(!$VOICE_OTHER&&#SYSTEM_voice_enable_another)){
		//$場所指定 = "voice/" + $音楽データ;
		$場所指定 = $音楽データ;

		CreateSound($ナット名, SE, $場所指定);
		SetVolume($ナット名, 0, 0, NULL);
		SetAlias($ナット名, $ナット名);
	}

}


//――――――――――――――――――――
..再生
//――――――――――――――――――――
function SoundPlay($SoundPlayName,秒数,$ボリウム,ループ設定)
{
	Request($SoundPlayName, Play);

	SetFrequency($SoundPlayName, 0, 1000, null);
//	SetPan($SoundPlayName, 0, 0, NULL);
	SetLoop($SoundPlayName, ループ設定);

	SetVolumeEX($SoundPlayName, 秒数, $ボリウム, null);

	Request($SoundPlayName, Disused);
}

function SoundPlayEF($SoundPlayName,秒数,$ボリウム,ループ設定)
{
	//エフェクト仕様
	$bgmmoji=Strstr($SoundPlayName, "d");
	if($bgmmoji==1||$bgmmoji==2){
		$SoundPlayName2=$SoundPlayName+"_ef";

		if(RemainTime($SoundPlayName)==0||RemainTime($SoundPlayName)==DurationTime($SoundPlayName)){
			SetVolume($SoundPlayName, 0, 1, null);
			Request($SoundPlayName2, Stop);
		}

		SetLoop($SoundPlayName2, ループ設定);
		SetVolume($SoundPlayName2, 0, 1, null);
		Request($SoundPlayName2, Play);

		Request($MusicStartName2, Disused);
	}

	Request($SoundPlayName, Play);

	SetFrequency($SoundPlayName, 0, 1000, null);
//	SetPan($SoundPlayName, 0, 0, NULL);
	SetLoop($SoundPlayName, ループ設定);

	SetVolumeEX($SoundPlayName, 秒数, $ボリウム, null);

	Request($SoundPlayName, Disused);
}

/*
	if(RemainTime($SoundPlayName)==0||RemainTime($SoundPlayName)==DurationTime($SoundPlayName)){
		SetVolume($SoundPlayName, 0, 1, null);
		//エフェクト仕様
		$bgmmoji=Strstr($SoundPlayName, "d");
		if($bgmmoji==1||$bgmmoji==2){
			$SoundPlayName2=$SoundPlayName+"_ef";
			Request($SoundPlayName2, Stop);
			SetLoop($SoundPlayName2, ループ設定);
			SetVolume($SoundPlayName2, 0, 1, null);
			Request($SoundPlayName2, Play);
		}
	}else{
		//エフェクト仕様
		$bgmmoji=Strstr($SoundPlayName, "d");
		if($bgmmoji==1||$bgmmoji==2){
			$SoundPlayName2=$SoundPlayName+"_ef";
			SetLoop($SoundPlayName2, ループ設定);
			SetVolume($SoundPlayName2, 0, 1, null);
			Request($SoundPlayName2, Play);
		}
	}
*/

function MusicStart($MusicStartName,秒数,$ボリウム,再生方向,再生スピード,テンポ,ループ設定)
{
	Request($MusicStartName, Play);

	SetFrequency($MusicStartName, 0, 再生スピード, NULL);
	SetPan($MusicStartName, 0, 再生方向, NULL);
	SetLoop($MusicStartName, ループ設定);

	SetVolumeEX($MusicStartName, 秒数, $ボリウム, テンポ);

	Request($MusicStartName, Disused);
}

function MusicStartEF($MusicStartName,秒数,$ボリウム,再生方向,再生スピード,テンポ,ループ設定)
{
	if(RemainTime($MusicStartName)==0||RemainTime($MusicStartName)==DurationTime($MusicStartName)){
		SetVolume($MusicStartName, 0, 1, null);
		//Message("デバッグ用ウィンドウ","デバッグ用です",YESNOCANCE,EXCLAMATION);

		//エフェクト仕様
		$MusicStartName2=$MusicStartName+"_ef";
		Request($MusicStartName2, Stop);
		SetLoop($MusicStartName2, ループ設定);
		SetVolume($MusicStartName2, 0, 1, null);
		Request($MusicStartName2, Play);
		Request($MusicStartName2, Disused);
	}

	Request($MusicStartName, Play);

	SetFrequency($MusicStartName, 0, 再生スピード, NULL);
	SetPan($MusicStartName, 0, 再生方向, NULL);
	SetLoop($MusicStartName, ループ設定);

	SetVolumeEX($MusicStartName, 秒数, $ボリウム, テンポ);

	Request($MusicStartName, Disused);
}




//――――――――――――――――――――
..音量調整
//――――――――――――――――――――
function SetVolumeEX($SetVolumeName, 秒数, $ボリウム, テンポ)
{
	$DynamicRange=$ボリウム/2;
	if($ボリウム==1){
		$DynamicRange=1;
	}

	$bgmmoji=Strstr($SetVolumeName, "d");
	if($ボリウム==0&&($bgmmoji==1||$bgmmoji==2)){
		$SetVolumeNameEF=$SetVolumeName+"_ef";
		SetVolume($SetVolumeNameEF, 秒数, 0, NULL);
	}
	SetVolume($SetVolumeName, 秒数, $DynamicRange, テンポ);
}

function SoundLoopEnd($ナット名)
{
	SetLoop($ナット名, false);
	SetLoopPoint($ナット名,0,999999);
}

function SetVolumeEF($SetVolumeName,$ボリウム)
{
	$DynamicRange=$ボリウム/2;
	if($ボリウム==1){
		$DynamicRange=1;
	}

	$SetVolumeName2=$SetVolumeName+"_ef";
	SetVolume($SetVolumeName, 0, 0, null);
	SetVolume($SetVolumeName2, 0, $DynamicRange, null);
	Request($SetVolumeName2, Pause);
}







//■BGMを纏めて定義
//=============================================================================//
.//BGM定義
//=============================================================================//

function InitBGM()
{
//定義
	CreateBGMEX_ef("dm001","dmbgm001",16303,81278);//日常曲（旧住民区）
	CreateBGMEX_ef("dm002","dmbgm002",25460,119912);//日常曲その２
	CreateBGMEX_ef("dm003","dmbgm003",8082,71648);//愉快な空気（おどけ系）
	CreateBGMEX_ef("dm004","dmbgm004",9533,100240);//プラチナジェイル（遊園地系の楽しい音楽）
	CreateBGMEX_ef("dm005","dmbgm005",48080,99775);//不穏
	CreateBGMEX_ef("dm006","dmbgm006",27772,166235);//不穏その２
	CreateBGMEX_ef("dm007","dmbgm007",38903,95365);//緊迫感
	CreateBGMEX_ef("dm007a","dmbgm007a",35851,92313);//緊迫感//冒頭空白カット版
	CreateBGMEX_ef("dm008","dmbgm008",3690,133605);//疾走感
	CreateBGMEX_ef("dm009","dmbgm009",33413,76095);//バトル（肉弾戦）
	CreateBGMEX_ef("dm010","dmbgm010",37819,123736);//ライムバトル（電脳空間／通常）
	CreateBGMEX_ef("dm011","dmbgm011",22745,76083);//ライムバトル（歪み）
	CreateBGMEX_ef("dm012","dmbgm012",24082,181172);//静けさ
	CreateBGMEX_ef("dm013","dmbgm013",27083,111081);//穏やかな空気
	CreateBGMEX_ef("dm014","dmbgm014",6836,113781);//ラブなシーン
	CreateBGMEX_ef("dm015","dmbgm015",64806,119667);//心情吐露
	CreateBGMEX_ef("dm016","dmbgm016",16249,88410);//蒼葉の決意
	CreateBGMEX_ef("dm017","dmbgm017",46404,100141);//暴露空間
	CreateBGMEX_ef("dm018","dmbgm018",114083,178074);//東江タワー
	CreateBGMEX_ef("dm019","dmbgm019",10079,42073);//東江のテーマ（洗脳BGM）
	CreateBGMEX_ef("dm020","dmbgm020",17495,111505);//クリアαの歌（洗脳BGM／東江のテーマのアレ ンジでもいいです）
	CreateBGMEX_ef("dm020a","dmbgm020a",2241,129408);//クリアの歌（対クリアα）
	CreateBGMEX_ef("dm020b","dmbgm020b",2092,126718);//クリアの歌（癒し）
	CreateBGMEX_ef("dm021","dmbgm021",11468,76084);//東江と対決
	CreateBGMEX_ef("dm022","dmbgm022",479,30931);//クラブの曲
	CreateBGMEX_ef("dm023","dmbgm023",1789,93204);//疾走感その２
	CreateBGMEX_ef("dm023a","dmbgm023a",0,48690);//疾走感その２//後半カッコイイパートのみ版//11524,37055←あきゅん：調整してます(22,48690)

	CreateBGM_ef("dmop","dmsongop");//『AI CATCH』GOATBED

	CreateBGM_ef("dmedgrand","dmsongedgrand");//蓮GOOD(真相END)『PARA MIDIA』GOATBED
	CreateBGM_ef("dmedgood","dmsongedgood");//共通GOOD『Only finally there is the free end』GOATBED

	CreateBGM_ef("dmedbd01","dmsongedbd01");//紅雀BAD『tears』いとうかなこ
	CreateBGM_ef("dmedbd02","dmsongedbd02");//ノイズBAD『feel your noise』木村世治
	CreateBGM_ef("dmedbd03","dmsongedbd03");//ミンクBAD『Sandy Weeds』VERTUEUX
	CreateBGM_ef("dmedbd04","dmsongedbd04");//クリアBAD『Immer Sie』いとうかなこ
	CreateBGM_ef("dmedbd05","dmsongedbd05");//蓮BAD『deSLASH』GOATBED
	CreateBGM_ef("dmedbd06","dmsongedbd06");//ウイトリBAD『MASCULINE DEVIL』GOATBED

	//ノイズファミコンバッド用８bitｂｇｍ
	CreateBGM_ef("dm8bit001","dm8bitbgm001");//日常曲（旧住民区）
	CreateBGM_ef("dm8bit009","dm8bitbgm009");//バトル（肉弾戦）
	CreateBGM_ef("dm8bit010","dm8bitbgm010");//バトル（電脳空間／通常）
	CreateBGM_ef("dm8bitedbd02","dm8bitsongedbd02");//ノイズBAD

	//エクストラ用楽曲ショート
	CreateBGM_ef("dmop_s","dmsongop_short");//『AI CATCH』GOATBED

	CreateBGM_ef("dmedgrand_s","dmsongedgrand_short");//蓮GOOD(真相END)『PARA MIDIA』GOATBED
	CreateBGM_ef("dmedgood_s","dmsongedgood_short");//共通GOOD『Only finally there is the free end』GOATBED

	CreateBGM_ef("dmedbd01_s","dmsongedbd01_short");//紅雀BAD『tears』いとうかなこ
	CreateBGM_ef("dmedbd02_s","dmsongedbd02_short");//ノイズBAD『feel your noise』木村世治
	CreateBGM_ef("dmedbd03_s","dmsongedbd03_short");//ミンクBAD『Sandy Weeds』VERTUEUX
	CreateBGM_ef("dmedbd04_s","dmsongedbd04_short");//クリアBAD『Immer Sie』いとうかなこ
	CreateBGM_ef("dmedbd05_s","dmsongedbd05_short");//蓮BAD『deSLASH』GOATBED
	CreateBGM_ef("dmedbd06_s","dmsongedbd06_short");//ウイトリBAD『MASCULINE DEVIL』GOATBED

}



function VoiceOn(){
}
function checkExtraNew(){
	$extra_new_ml=false;
	$extra_new_reco=false;
	$extra_new_gl=false;
	#ML_on_op+=0;
	if(#ML_on_op<1){
		$extra_new_ml=true;
	}
	if(#GDED1==1||#GDED2==1||#GDED3==1||#GDED4==1){
		#ML_on_edgood+=0;
		if(#ML_on_edgood<1){$extra_new_ml=true;}
	}
	if(#BDED1==1){
		#ML_on_edbd01+=0;
		if(#ML_on_edbd01<1){$extra_new_ml=true;}
	}
	if(#BDED2==1){
		#ML_on_edbd02+=0;
		if(#ML_on_edbd02<1){$extra_new_ml=true;}
	}
	if(#BDED3==1){
		#ML_on_edbd03+=0;
		if(#ML_on_edbd03<1){$extra_new_ml=true;}
	}
	if(#BDED4==1){
		#ML_on_edbd04+=0;
		if(#ML_on_edbd04<1){$extra_new_ml=true;}
	}
	if(#BDED5==1){
		#ML_on_edbd05+=0;
		if(#ML_on_edbd05<1){$extra_new_ml=true;}
	}
	if(#BDED6==1){
		#ML_on_edbd06+=0;
		if(#ML_on_edbd06<1){$extra_new_ml=true;}
	}
	if(#GDED5==1){
		#ML_on_edgrand+=0;
		if(#ML_on_edgrand<1){$extra_new_ml=true;}
	}
	
	if(#RECLIB01==1){
		#RECLIB01_NEW+=0;
		if(#RECLIB01_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB02==1){
		#RECLIB02_NEW+=0;
		if(#RECLIB02_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB03==1){
		#RECLIB03_NEW+=0;
		if(#RECLIB03_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB04==1){
		#RECLIB04_NEW+=0;
		if(#RECLIB04_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB05==1){
		#RECLIB05_NEW+=0;
		if(#RECLIB05_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB06==1){
		#RECLIB06_NEW+=0;
		if(#RECLIB06_NEW<1){$extra_new_reco=true;}
	}
//	if(#RECLIB07==1){
//		#RECLIB07_NEW+=0;
//		if(#RECLIB07_NEW<1){$extra_new_reco=true;}
//	}
	if(#RECLIB08==1){
		#RECLIB08_NEW+=0;
		if(#RECLIB08_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB09==1){
		#RECLIB09_NEW+=0;
		if(#RECLIB09_NEW<1){$extra_new_reco=true;}
	}
	if(#RECLIB10==1){
		#RECLIB10_NEW+=0;
		if(#RECLIB10_NEW<1){$extra_new_reco=true;}
	}
	if(#GDED5==1){
		#GL_09+=0;
		#GL_13_1+=0;
		#GL_13_2+=0;
		if(#GL_09<1||#GL_13_1<1||#GL_13_2<1){$extra_new_gl=true;}
	}
	if(#GDED1==1||#GDED2==1||#GDED3==1||#GDED4==1){
		#GL_13_1+=0;
		#GL_13_2+=0;
		if(#GL_13_1<1){$extra_new_gl=true;}
	}
}