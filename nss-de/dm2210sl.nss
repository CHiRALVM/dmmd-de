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


scene dm2210sl.nss_MAIN
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


scene dm2210sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302012_5_グリッター部屋02");
	FadeBG(0,true);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",0,true);


	FadeDelete("上背景", 0, null, true);

//▼選択肢：ノイズ
//→▽いい加減イラつく
//→▽気持ちを正直に伝える（ノイズポント＋１）


//■選択肢
	SetChoice02(" Get angry"," Try and speak honestly");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm2211.nss";$ノイズ選択肢6=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm2212.nss";$ノイズ選択肢6=1;}

}
