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


scene dm3110sl.nss_MAIN
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


scene dm3110sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);



//▼選択肢：ミンク
//→▽すぐに支度をする（ミンクポント＋１）
//→▽行き先を聞く


//■選択肢
	SetChoice02(" Get ready right away"," Ask where we're going");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm3111.nss";$ミンク選択肢5=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm3112.nss";$ミンク選択肢5=0;}

}
