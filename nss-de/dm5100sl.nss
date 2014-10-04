//<continuation number="0">
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


scene dm5100sl.nss_MAIN
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


scene dm5100sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵ＥＶ111", 111, -250, -268, "cg/ev/m/ev026蓮メンテb_m.jpg");

	FadeDelete("上背景", 0, null, true);


//▼選択肢：蓮
//→▽申し訳ない気持ちになる（蓮ポイント＋１）
//→▽寂しい気持ちになる


//■選択肢
	$select_fade=true;
	SetChoice02(" I feel sorry"," I feel lonely");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm5101.nss";$蓮選択肢5=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm5102.nss";$蓮選択肢5=0;}

}
