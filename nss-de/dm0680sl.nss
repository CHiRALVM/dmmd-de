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


scene dm0680sl.nss_MAIN
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


scene dm0680sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	OnBG(10,"bg402041_1_立ち入り禁止区域工場通路");
	FadeBG(0,true);

//嶋：ＢＧＭ引き継ぎ注意
	SoundPlay("@dm009",0,450,true);

	FadeDelete("上背景", 0, null, true);



//▼選択肢：ミンク
//→▽戸惑う
//→▽ミンクに従う（ミンクポイント＋１）


//■選択肢
	SetChoice02(" Hesitate to listen"," Listen to Mink");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0681_vs.nss";$ミンク選択肢4=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0682_vs.nss";$ミンク選択肢4=1;}

}
