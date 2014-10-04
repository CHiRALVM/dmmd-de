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


scene dm0590sl.nss_MAIN
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


scene dm0590sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm003",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg102031_1_平凡前通り");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/bg102031_1_平凡前通り.jpg");

	St("C",740, @0,@0,"fuクリア_通常マスクあり_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);



//▼選択肢：クリア
//→▽先を急ぐ（ミンクポイント＋１）
//→▽本当に聞こえた？（クリアポイント＋１）


//■選択肢
	SetChoice02(" Hurry inside"," Did you really hear me?");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0591.nss";$ミンク選択肢3=1;$クリア選択肢3=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0592.nss";$ミンク選択肢3=0;$クリア選択肢3=1;}


//	ClearFadeAll(1000, true);

}
