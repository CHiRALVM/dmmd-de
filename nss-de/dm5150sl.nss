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


scene dm5150sl.nss_MAIN
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


scene dm5150sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm004",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//▼選択肢：蓮
//→▽不具合を疑う気持ちが強い
//→▽蓮を心配する気持ちが強い（蓮ポイント＋１）


//■選択肢
	SetChoice02(" Become suspicious of Ren's malfunction"," Feel very relieved");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm5151.nss";$蓮選択肢6=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm5152.nss";$蓮選択肢6=1;}

}
