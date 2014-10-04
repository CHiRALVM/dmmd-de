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


scene dm0260sl.nss_MAIN
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


scene dm0260sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm013",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵ＥＶ100", 100, -250, -268, "cg/ev/m/ev026蓮メンテ_m.jpg");

	FadeDelete("上背景", 0, null, true);

//▼選択肢（蓮）：
//→▽おかしくない（※蓮ルート開放前はこっちを自動で通る）
//→▽おかしくはないけど（蓮ポイント＋１）


//■選択肢
	SetChoice02(" It's not strange"," Not really");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0261.nss";$蓮選択肢2=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0262.nss";$蓮選択肢2=1;}



//	ClearFadeAll(1000, true);

}
