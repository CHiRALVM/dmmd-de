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


scene dm0630sl.nss_MAIN
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


scene dm0630sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, -515, -485, "cg/bg/l/bg402021_1_立ち入り禁止区域工場外観_l.jpg");

	FadeDelete("上背景", 0, null, true);



//▼選択肢：蓮
//→▽カバンを開ける（蓮ポイント＋１）
//→▽そのままにしておく


//■選択肢
//	$select_fade=true;
	SetChoice02(" Open bag"," Leave it as is");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0631.nss";$蓮選択肢4=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm0632.nss";$蓮選択肢4=0;}



//	ClearFadeAll(1000, true);

}
