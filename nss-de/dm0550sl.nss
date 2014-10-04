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


scene dm0550sl.nss_MAIN
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


scene dm0550sl.nss
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

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",0,true);

	FadeDelete("上背景", 200, null, true);



//▼選択肢：ミンク
//→▽言いなりにはならない
//→▽今は我慢するしかない（ミンクポイント＋１）


//■選択肢
	SetChoice02(" Don't listen to him&."," I have to bear with this&.");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0551.nss";$ミンク選択肢1=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0552.nss";$ミンク選択肢1=1;}



//	ClearFadeAll(1000, true);

}
