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


scene dm0640sl.nss_MAIN
{
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


scene dm0640sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg402021_1_立ち入り禁止区域工場外観");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -515, -485, "cg/bg/l/bg402021_1_立ち入り禁止区域工場外観_l.jpg");

	FadeDelete("上背景", 0, null, true);



//▼選択肢：ノイズ
//→▽ノイズの隣に並ぶ（ノイズポイント＋１）
//→▽ノイズの様子を窺う


//■選択肢
//	$select_fade=true;
	SetChoice02(" Go up to Noiz"," Peek at what Noiz is doing");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0641.nss";$ノイズ選択肢4=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm0642.nss";$ノイズ選択肢4=0;}

}
