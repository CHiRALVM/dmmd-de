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


scene dm4330sl.nss_MAIN
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


scene dm4330sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	St("C",740, @0,@0,"buクリア_正面マスクなし_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//▼選択肢：クリア
//→▽少し考えすぎだ
//→▽何か怖いのか？（クリアポント＋１）


//■選択肢
	SetChoice02(" You're thinking too hard about it"," Are you afraid of something?");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm4331.nss";$クリア選択肢6=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm4332.nss";$クリア選択肢6=1;}

}
