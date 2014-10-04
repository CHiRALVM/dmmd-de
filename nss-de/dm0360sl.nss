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


scene dm0360sl.nss_MAIN
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


scene dm0360sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, -800, "cg/bg/l/bg104031_5_蒼葉宅自室消灯荒らし_l.jpg");

	FadeDelete("上背景", 0, null, true);



//▲選択肢（クリア）：
//・階段を上る音が聞こえた（紅雀ポイント＋１）
//・屋根から何か音がした（クリアポイント＋１）


//■選択肢
	$select_fade=true;
	SetChoice02(" I hear someone on the stairs"," I hear something on the roof");
	WaitChoice02();

	if($SetChoiceSelect==0){		$GameName = "dm0361_vs.nss";$紅雀選択肢2=1;$クリア選択肢2=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0362_vs.nss";$紅雀選択肢2=0;$クリア選択肢2=1;}



//	ClearFadeAll(1000, true);

}
