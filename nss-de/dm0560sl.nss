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


scene dm0560sl.nss_MAIN
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


scene dm0560sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg106021_5_廃ビル部屋");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//▼選択肢：蓮
//→▽蓮を抱き上げる（蓮ポイント＋１）
//→▽コイルを手に取る


//■選択肢
	SetChoice02(" Hold Ren"," Take Coil out");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0561.nss";$蓮選択肢3=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm0562.nss";$蓮選択肢3=0;}



//	ClearFadeAll(1000, true);

}
