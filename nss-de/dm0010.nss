//<continuation number="0">
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


scene dm0010.nss_MAIN
{

//◆ルート変数全初期化
$紅雀選択肢1=0;$紅雀選択肢2=0;$紅雀選択肢3=0;$紅雀選択肢4=0;
$紅雀選択肢5=0;$紅雀選択肢6=0;$紅雀選択肢7=0;$紅雀選択肢8=0;
$ノイズ選択肢1=0;$ノイズ選択肢2=0;$ノイズ選択肢3=0;$ノイズ選択肢4=0;
$ノイズ選択肢5=0;$ノイズ選択肢6=0;$ノイズ選択肢7=0;$ノイズ選択肢8=0;
$ミンク選択肢1=0;$ミンク選択肢2=0;$ミンク選択肢3=0;$ミンク選択肢4=0;
$ミンク選択肢5=0;$ミンク選択肢6=0;$ミンク選択肢7=0;$ミンク選択肢8=0;
$pMINK=0;$pMINKbad=0;
$クリア選択肢1=0;$クリア選択肢2=0;$クリア選択肢3=0;$クリア選択肢4=0;
$クリア選択肢5=0;$クリア選択肢6=0;$クリア選択肢7=0;$クリア選択肢8=0;
$蓮選択肢1=0;$蓮選択肢2=0;$蓮選択肢3=0;$蓮選択肢4=0;
$蓮選択肢5=0;$蓮選択肢6=0;$蓮選択肢7=0;$蓮選択肢8=0;
$ウイトリ選択肢=0;

//蓮ルート用スタートフラグ判定
if(#GDED4CLEAR==1){$START0010=1;}
else{$START0010=0;}
//ルート番号
$DM_ROUTE=0;
//キャラポイント競合チェック用
Array($DM_ROUTE_SEL,0, 0,0,0,0);

//頭痛エフェクト用変数
$HALevel=1;//シナリオ中の頭痛レベル
$HACurrent=1;//プロセス用の頭痛レベル
$HAON=0;//プロセス再生中

	//テキストボックス種類（ドラマダ）
	//通常、ライム、暴露、暴露白（セイ）　×　地の文のみ、顔ウィンドウあり
	$TEXTBOX_TYPE="";//"ライム"、"暴露"、、"暴露白"//未記入＆デフォルトは通常


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
	$GameName = "dm0020.nss";

}


scene dm0010.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	
	if(#mvdot001==1){
	}else{
		if(#LOCAL_break_play_movie){
		}else{$SYSTEM_skip_lock=true;}
	}
	

	PrintBG("上背景", 30000);

	FadeDelete("上背景", 1000, null, true);

	CreateMovieSPvol("絵mvdot001",100,Center,Middle,false,false,"dx/mvdot001_eng.ngs",150);
//$mv_vol=#SYSTEM_sound_volume_se*$指定値/1000;
//	CreateMovie("絵mvdot001",100,Center,Middle,false,false,"dx/mvdot001_eng.ngs",$mv_vol);
	Zoom("絵mvdot001",0,2000,2000,null,true);
	MovieSkipPlay("絵mvdot001","mvdot001");
/*
	if(#mvdot001==1){
		$waittime=RemainTime("絵mvdot001");
		WaitKey($waittime);
	}else{
		if(#LOCAL_break_play_movie){
			$waittime=RemainTime("絵mvdot001");
			WaitKey($waittime);
		}else{WaitPlay("絵mvdot001",true);}
		#mvdot001=1;
		Save(0);
	}
*/
	$SYSTEM_skip_lock=false;

	PrintBG("上背景", 30000);
	FadeDelete("上背景", 3000, null, true);WaitKey(2000);


//※できればファミコン風フォントでピ、ピ、ピ、と表示希望ですが、無理なら普通でいいです。

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0010]
/*
　…………

　…………

　Du bist endlich da……

　Ich habe gewartet……
　Immer……

　Komm her……

　Zerstoere mich……

　Mit deiner Kraft……
*/

//</PRE>
//	SetText();
//	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0020.nss"]

WaitKey(1000);

	ClearFadeAll(1000, true);

}

