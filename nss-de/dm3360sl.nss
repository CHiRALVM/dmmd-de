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


scene dm3360sl.nss_MAIN
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


scene dm3360sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);


//▼選択肢：ミンク
//→▽どうすればいいかわからない
//→▽それでも抵抗する（ミンクポイント＋１）


//■選択肢
	SetChoice02(" I don't know what to do"," Still resist");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm3361.nss";$ミンク選択肢7=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm3362.nss";$ミンク選択肢7=1;}

}
