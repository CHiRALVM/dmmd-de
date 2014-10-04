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


scene dm4390sl.nss_MAIN
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


scene dm4390sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//▼選択肢：クリア
//→▽クリアの様子を見る（クリアポント＋１）
//→▽それでも手を掴む


//■選択肢
	SetChoice02(" Examine Clear from afar"," Grab him anyway");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm4391.nss";$クリア選択肢7=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm4392.nss";$クリア選択肢7=0;}

}
