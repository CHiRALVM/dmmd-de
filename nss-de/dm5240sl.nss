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


scene dm5240sl.nss_MAIN
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


scene dm5240sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景90", 90, -132, -235, "cg/bg/m/bg302021_5_グリッター居間_m.jpg");

	FadeDelete("上背景", 0, null, true);

//▼選択肢：蓮
//→▽蓮に答える（蓮ポイント＋１）
//→▽蓮を撫でる


//■選択肢
	SetChoice02(" Answer Ren"," Pet Ren");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm5241.nss";$蓮選択肢7=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm5242.nss";$蓮選択肢7=0;}

}
