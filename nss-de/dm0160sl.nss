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


scene dm0160sl.nss_MAIN
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


scene dm0160sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101031_1_旧住民区通り裏路地紅時雨");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);



//▼選択肢：紅雀
//→振り払う
//→躊躇する（紅雀ポイント＋１）


//■選択肢
	SetChoice02("Abschuetteln"," Zoegern");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0161.nss";$紅雀選択肢1=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0162.nss";$紅雀選択肢1=1;}



//	ClearFadeAll(1000, true);

}
