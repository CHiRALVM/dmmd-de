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


scene dm2300sl.nss_MAIN
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


scene dm2300sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	OnBG(10,"bg304081_5_東江タワー物置部屋");
	FadeBG(0,true);
	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",0,true);

//嶋：ＢＧＭ引き継ぎ注意
//	SoundPlay("@dm018",0,450,true);

	FadeDelete("上背景", 0, null, true);

//▼選択肢：ノイズ
//→▽怒ってるように見える
//→▽不満があるように見える（ノイズポント＋１）


//■選択肢
	SetChoice02(" He looks angry"," He looks unhappy");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm2301.nss";$ノイズ選択肢7=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm2302.nss";$ノイズ選択肢7=1;}



//	ClearFadeAll(1000, true);

}
