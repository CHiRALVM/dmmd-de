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


scene dm0190sl.nss_MAIN
{
$TEXTBOX_TYPE="ライム";

	if($PreGameName=="dm0190_vs.nss"){
	}else{
	CreateTxtinEffect("蓮",4000);
	CreateTxtinEffect("ノイズ",4000);
	RMScaningSet();
	RMScaningCSet("蒼葉");
	RMDefaultStatusSet();
	RMDControlSet();
	}

//■超速設定なし
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	//


}


scene dm0190sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm008",0,450,true);//疾走

	PrintBG("上背景", 30000);

	CreateTextureSP("絵専", 1310, -512, -302, "cg/ev/l/ev960ウサギモドキ戦闘突進_l.jpg");
	Request("絵専", Smoothing);
	Zoom("絵専", 0, 550, 550, Dxl3, false);

	FadeDelete("上背景", 0, null, true);

//▼選択肢（蓮）：
//→▽ガードする
//→▽蓮を庇う（蓮ポイント＋１）

//■選択肢
	$select_fade=true;
	SetChoice02(" Guard"," Protect Ren");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0191_vs.nss";$蓮選択肢1=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0192_vs.nss";$蓮選択肢1=1;}

}
