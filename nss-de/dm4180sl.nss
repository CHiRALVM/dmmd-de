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


scene dm4180sl.nss_MAIN
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


scene dm4180sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//▼選択肢：クリア
//→▽しっかりと言い聞かせる
//→▽クリアの言い分も聞く（クリアポント＋１）



//■選択肢
	SetChoice02(" Firmly reprimand him"," Listen to what Clear has to say");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm4181.nss";$クリア選択肢5=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm4182.nss";$クリア選択肢5=1;}

}
