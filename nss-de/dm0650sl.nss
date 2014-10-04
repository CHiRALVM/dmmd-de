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


scene dm0650sl.nss_MAIN
{
//■超速設定なし
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg402031_1_立ち入り禁止区域工場部屋01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	//


}


scene dm0650sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintGO("上背景", 30000);

//嶋：ＢＧＭ引き継ぎ注意
	SoundPlay("@dm009",0,450,true);

	OnBG(10,"bg402031_1_立ち入り禁止区域工場部屋01");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);



//▼選択肢：クリア
//→▽クリアを目で探す
//→▽クリアの名前を呼ぶ（クリアポイント＋１）


//■選択肢
	SetChoice02(" Search for Clear"," Call Clear's name");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0651.nss";$クリア選択肢4=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0652.nss";$クリア選択肢4=1;}



//	ClearFadeAll(1000, true);

}
