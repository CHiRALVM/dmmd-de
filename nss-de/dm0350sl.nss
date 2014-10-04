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


scene dm0350sl.nss_MAIN
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


scene dm0350sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯荒らし");
	FadeBG(0,true);

	St("C",740, @0,@0,"fuノイズ_通常_serious");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);



//▼選択肢：ノイズ
//→▽ムカつく
//→▽ガキか！（ノイズポイント＋１）


//■選択肢
	SetChoice02(" Fight back"," You brat!");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0352.nss";$ノイズ選択肢1=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0351.nss";$ノイズ選択肢1=1;}



//	ClearFadeAll(1000, true);

}
